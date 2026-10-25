# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Git.Variant6a91b5a1b762f7da96917ce76cafe998dddaaa07cb0f9888d8bd2b7fcfa3d8e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6088b214c5764c56a0a3317570f200398fb10ad` · SHA-256 `a92b5689a69012b62b0ec420f2e646c18c82574025c3e5f8f2ad1915ea67ae72`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GitRepo.Variant53d7867eaa9db09ebdb9329bbae59a1f8292bdf559ff66a7bd373cebcefba660","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53d7867eaa9db09ebdb9329bbae59a1f8292bdf559ff66a7bd373cebcefba660","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.GitRepo.Variant53d7867eaa9db09ebdb9329bbae59a1f8292bdf559ff66a7bd373cebcefba660","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"53d7867eaa9db09ebdb9329bbae59a1f8292bdf559ff66a7bd373cebcefba660","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Git.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Sebastian Ullrich, Mac Malone
-/
module

prelude
public import Init.Data.ToString
public import Lake.Util.Proc
import Init.Data.String.TakeDrop
import Init.Data.String.Search
import Lake.Util.String


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GitRepo.Variant53d7867eaa9db09ebdb9329bbae59a1f8292bdf559ff66a7bd373cebcefba660

open System
namespace Lake

namespace Git

public def defaultRemote : String :=
  "origin"

public def upstreamBranch : String :=
  "master"

/--
Try to turn a remote URL into a URL that can be used to, e.g.,
make GitHub API requests. That is, do not accept SSH URLs and
drop an ending `.git`.
-/
public def filterUrl? (url : String) : Option String :=
  if url.startsWith "git" then
    none
  else if url.endsWith ".git" then
    some <| url.dropEnd 4 |>.copy
  else
    some url

public def isFullObjectName (rev : String) : Bool :=
  rev.utf8ByteSize == 40 && isHex rev

end Git

public structure GitRepo where
  dir : FilePath


/--
A commit-ish [Git revision][1].

This can be SHA1 commit hash, a branch name, or one of Git's more complex specifiers.

[1]: https://git-scm.com/docs/gitrevisions#_specifying_revisions
-/
public abbrev GitRev := String

namespace GitRev

/-- The head revision (i.e., `HEAD`). -/
@[expose] public def head : GitRev := "HEAD"

/-- The revision fetched during the last `git fetch` (i.e., `FETCH_HEAD`). -/
@[expose] public def fetchHead : GitRev := "FETCH_HEAD"

/-- Returns whether this revision is a 40-digit hexadecimal (SHA1) commit hash. -/
public def isFullSha1 (rev : GitRev) : Bool :=
  rev.utf8ByteSize == 40 && isHex rev

attribute [deprecated GitRev.isFullSha1 (since := "2026-04-17")] Git.isFullObjectName

/-- Scopes the revision by the remote. -/
@[inline] public def withRemote (remote : String) (rev : GitRev) : GitRev :=
  s!"{remote}/{rev}"

end GitRev

namespace GitRepo

public instance : Coe FilePath GitRepo := ⟨(⟨·⟩)⟩
public instance : ToString GitRepo := ⟨(·.dir.toString)⟩

public def cwd : GitRepo := ⟨"."⟩

@[inline] public def dirExists (repo : GitRepo) : BaseIO Bool :=
  repo.dir.isDir

@[inline] public def captureGit (args : Array String) (repo : GitRepo) : LogIO String :=
  captureProc {cmd := "git", args, cwd := repo.dir}

@[inline] public def captureGit? (args : Array String) (repo : GitRepo) : BaseIO (Option String) :=
  captureProc? {cmd := "git", args, cwd := repo.dir}

@[inline] public def execGit (args : Array String) (repo : GitRepo) : LogIO PUnit :=
  proc {cmd := "git", args, cwd := repo.dir} (quiet := true)

@[inline] public def testGit (args : Array String) (repo : GitRepo) : BaseIO Bool :=
  testProc {cmd := "git", args, cwd := repo.dir}

public def clone (url : String) (repo : GitRepo) : LogIO PUnit  :=
  proc {cmd := "git", args := #["clone", url, repo.dir.toString]} (quiet := true)

public def quietInit (repo : GitRepo) : LogIO PUnit  :=
  repo.execGit #["init", "-q"]

public def bareInit (repo : GitRepo) : LogIO PUnit  :=
  repo.execGit #["init", "--bare", "-q"]

public def insideWorkTree (repo : GitRepo) : BaseIO Bool := do
  repo.testGit #["rev-parse", "--is-inside-work-tree"]

public def fetch (repo : GitRepo) (remote := Git.defaultRemote) : LogIO PUnit  :=
  repo.execGit #["fetch", "--tags", "--force", remote]

public def addWorktreeDetach (path : FilePath) (rev : GitRev) (repo : GitRepo) : LogIO PUnit :=
  repo.execGit #["worktree", "add", "--detach", path.toString, rev]

public def checkoutBranch (branch : String) (repo : GitRepo) : LogIO PUnit :=
  repo.execGit #["checkout", "-B", branch]

public def checkoutDetach (hash : String) (repo : GitRepo) : LogIO PUnit  :=
  repo.execGit #["checkout", "--detach", hash, "--"]

/-- Remove untracked files from tracked folders in the repository. -/
public def clean (repo : GitRepo) : LogIO PUnit :=
  repo.execGit #["clean", "-xf"]

/-- Resolves the revision to a Git object name (SHA1 hash) which or may not exist in the repository. -/
public def resolveRevision? (rev : GitRev) (repo : GitRepo) : BaseIO (Option GitRev) := do
  repo.captureGit? #["rev-parse", "--verify", "--end-of-options", rev]

/-- Resolves the revision to a valid commit hash within the repository. -/
public def findCommit? (rev : GitRev) (repo : GitRepo) : BaseIO  (Option GitRev) := do
  repo.captureGit? #["rev-parse", "--verify", "--end-of-options", rev ++ "^{commit}"]

public def resolveRevision (rev : GitRev) (repo : GitRepo) : LogIO GitRev := do
  if rev.isFullSha1 then return rev
  if let some rev ← repo.resolveRevision? rev then return rev
  error s!"{repo}: revision not found '{rev}'"

@[inline] public def getHeadRevision? (repo : GitRepo) : BaseIO (Option GitRev) :=
  repo.resolveRevision? .head

public def getHeadRevision (repo : GitRepo) : LogIO GitRev := do
  if let some rev ← repo.getHeadRevision? then return rev
  error s!"{repo}: could not resolve 'HEAD' to a commit; \
    the repository may be corrupt, so you may need to remove it and try again"

public def fetchRevision? (repo : GitRepo) (remote : String) (rev : GitRev) : LogIO (Option GitRev) := do
  if (← repo.testGit #["fetch", "--tags", "--force", "--refetch", "--filter=tree:0", remote, rev]) then
    let some rev ← repo.resolveRevision? .fetchHead
      | error s!"{repo}: could not resolve 'FETCH_HEAD' to a commit after fetching; \
          this may be an issue with Lake; please report it"
    return rev
  else
    return none

public def getHeadRevisions (repo : GitRepo) (n : Nat := 0) : LogIO (Array GitRev) := do
  let args := #["rev-list", "HEAD"]
  let args := if n != 0 then args ++ #["-n", toString n] else args
  let revs ← repo.captureGit args
  return revs.split '\n' |>.toStringArray

public def resolveRemoteRevision (rev : GitRev) (remote := Git.defaultRemote) (repo : GitRepo) : LogIO GitRev := do
  if rev.isFullSha1 then return rev
  if let some rev ← repo.resolveRevision? (rev.withRemote remote) then return rev
  if let some rev ← repo.resolveRevision? rev then return rev
  error s!"{repo}: revision not found '{rev}'"

public def findRemoteRevision (repo : GitRepo) (rev? : Option GitRev := none) (remote := Git.defaultRemote) : LogIO String := do
  repo.fetch remote; repo.resolveRemoteRevision (rev?.getD Git.upstreamBranch) remote

public def branchExists (rev : GitRev) (repo : GitRepo) : BaseIO Bool := do
  repo.testGit #["show-ref", "--verify", s!"refs/heads/{rev}"]

public def revisionExists (rev : GitRev) (repo : GitRepo) : BaseIO Bool := do
  repo.testGit #["rev-parse", "--verify", rev ++ "^{commit}"]

public def getTags (repo : GitRepo) : BaseIO (List String) := do
  let some out ← repo.captureGit? #["tag"] | return []
  return out.split '\n' |>.toStringList

public def findTag? (rev : GitRev := .head) (repo : GitRepo) : BaseIO (Option String) := do
  repo.captureGit? #["describe", "--tags", "--exact-match", rev]

public def getRemoteUrl?
  (remote := Git.defaultRemote) (repo : GitRepo)
: BaseIO (Option String) := repo.captureGit? #["remote", "get-url", remote]

public def addRemote (remote : String) (url : String) (repo : GitRepo) : LogIO Unit :=
  repo.execGit #["remote", "add", remote, url]

public def setRemoteUrl (remote : String) (url : String) (repo : GitRepo) : LogIO Unit :=
  repo.execGit #["remote", "set-url", remote, url]

public def getFilteredRemoteUrl?
  (remote := Git.defaultRemote) (repo : GitRepo)
: BaseIO (Option String) := OptionT.run do Git.filterUrl? (← repo.getRemoteUrl? remote)

public def hasNoDiff (repo : GitRepo) : BaseIO Bool := do
  repo.testGit #["diff", "--exit-code", "HEAD"]

@[inline] public def hasDiff (repo : GitRepo) : BaseIO Bool := do
  not <$> repo.hasNoDiff
```
