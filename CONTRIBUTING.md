# Contributing and GitHub publication

Local source attribution: grwtsk contributors.

[AGENTS.md](AGENTS.md) owns repository policy. Use `main` and coordinate through
issues. These instructions support both a local checkout and an authenticated
GitHub plugin/API session. They do not expand the user's task or the connection's
permissions. Source publication and mathematical acceptance are separate.

## Select the available route

Inspect the current tool descriptions and schemas before choosing a route. Do
not assume that every GitHub integration has the same capabilities. Use the
logged-in account for authorized writes; connector-selected commit metadata is
accepted without an unsupported author/committer override. Keep collective source
bylines unchanged and record only the public login, not private profile fields.
A local clone, shell, Git identity override, Lean installation or Noe runtime is
not a prerequisite for source-only publication through available write actions.

Read live `main`, its commit/tree IDs, applicable `AGENTS.md` files, and the whole
contents of each file to be replaced at that revision. Record its blob SHA.
Search results, summaries and truncated responses are not complete replacement
files: expand ranges or fetch the full blob. Preserve UTF-8, executable/symlink
modes, licenses and unrelated content. Never infer absence from an incomplete
search; use direct path/tree reads. Inspect existing build pins and applicable
validation configuration before changing them; this guide does not authorize
changing them merely for publication convenience.

## Related changes: one complete-tree commit

Use this route when the exposed connector supports Git object creation and ref
updates. The action names below describe the inspected interface; rediscover
schemas in a new session rather than assuming parameters remain unchanged.

1. Pin the live `main` commit `H` and its complete root tree `T`. Read/reconcile
   the affected files at `H`, and record scope in a new or existing issue.
2. Use `create_blob` for reviewed complete file bytes. Use `create_tree` with
   `base_tree_sha=T` and only the intended path changes. Preserve modes and all
   untouched paths. Do not create a delta-only root tree or reconstruct a full
   tree from a truncated recursive listing.
3. Use `create_commit` with the resulting tree and `parent_sha=H`. The connection
   supplies Git author/committer metadata; do not invent unsupported arguments.
   A normal update needs one parent. Do not add old candidate parents merely to
   work around a conflict or conceal omitted concurrent changes.
4. Review the exact parent-to-candidate diff and intended paths. Reread `main`.
   If it moved, inspect the new base, reconcile collisions, and rebuild on its
   complete tree. An unchanged edited blob may be reused after that check.
5. Use `update_ref` with `force=false` and `expected_sha=H` when the action
   supports it. A rejected lease is a reason to refresh, not to force-push.
   Do not claim the connector's expected-head check is stronger or more atomic
   than its documented contract. Server-side non-fast-forward rejection remains
   essential. If only a non-force ref update is exposed, reread immediately
   before it and handle rejection; disclose the absence of an explicit lease.
6. Read back `main` and the published files/blob IDs. Confirm the commit is the
   branch head or, if another writer advanced it, a confirmed ancestor. Report
   later changes to the same files separately. Record the publication commit,
   tree, changed paths, actual checks and remaining obligations in the issue.

Creating a blob, tree or detached commit alone is not publication. Preserve a
prepared candidate on a rejected update, but do not report it as delivered on
`main`. Never overwrite unrelated work or rewrite branch history to finish.

## Independent single-file changes: Contents API

A discovered `update_file` action can replace an existing file using its full
contents and current blob `sha`; fetch it first. A discovered `create_file`
action can add a path confirmed absent. Specify `main` explicitly where the
schema permits, serialize writes, and read back each returned commit and file.
On conflict, reread and reconcile instead of resubmitting stale contents.

A file SHA guards that path, not the entire branch. Multiple Contents writes
are separate commits, not an atomic multi-file change. Use this route only when
each intermediate state is valid and reviewed. Preserve file modes; use the Git
object route for mode-sensitive or all-or-nothing changes. If a session lacks
all safe write routes, report the exact unavailable action/permission without
claiming publication, requesting secrets, or inventing a tool call.

## Local checkout and protected branches

With a checkout, inspect HEAD, index and working tree; preserve concurrent edits,
stage only the task's paths, and use routine non-force publication. Do not require
that route when an authorized connector route is available. If actual branch
protection requires a PR or checks, follow it; create a branch/PR only when
requested or direct `main` publication is technically impossible. Never disable
protection, checks, rulesets or access controls under a compatibility request.

## Evidence and execution boundaries

Perform checks that are available, authorized and relevant. For a policy-only
change, inspect exact diffs, links, template syntax where changed and publication
readback. Lean/kernel/axiom checks are `NOT_APPLICABLE` to those policy files;
existing mathematical evidence statuses do not change.

For mathematical source, preserve the exact statements, provenance and source
return. Record unavailable elaboration, kernel replay, axiom audit and independent
review as `NOT_RUN`; record an executed failure as a failure. An honestly labeled
candidate may be published without those tools, but is not an accepted theorem.
Required server checks still apply. Do not add root imports, alter dependency
pins, fabricate a passing receipt or weaken proof standards to publish a candidate.
Optional catalogue/navigation generation is not a source-publication gate; do
not claim coverage that was not regenerated from the complete tree.

Ordinary authorized source authoring and GitHub publication do not invoke Noe.
Read the current canonical skills and their referenced resources before covered
Noe proof automation, cross-chat messaging or scheduler work. If unavailable,
stop only the dependent automation and report it. Do not relabel covered work to
bypass its requirements. Noe owns proof-execution runtimes and operational
receipts; a source-bound issue can record ordinary Git publication observations.
No new execution, messaging, scheduling or cross-repository authority follows
from this guide.

## Intake and references

Equivalent Markdown issue and PR bodies from the plugin are valid; interactive
YAML forms are not mandatory. Retain relevant scope, source pins, evidence and
obligations. A policy-only change may mark mathematical fields `NOT_APPLICABLE`.
A direct `main` change uses issue coordination rather than a mandatory PR.

GitHub's primary API references: [Git trees](https://docs.github.com/en/rest/git/trees),
[Git references](https://docs.github.com/en/rest/git/refs), and
[Repository contents](https://docs.github.com/en/rest/repos/contents).
The active connector schemas govern which of these operations are exposed.
