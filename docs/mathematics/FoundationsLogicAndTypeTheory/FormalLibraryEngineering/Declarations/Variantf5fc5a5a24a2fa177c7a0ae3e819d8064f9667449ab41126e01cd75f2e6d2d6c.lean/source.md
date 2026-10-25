# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variantf5fc5a5a24a2fa177c7a0ae3e819d8064f9667449ab41126e01cd75f2e6d2d6c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `538741a58286bc9923665edd8543156d7f963c93` · SHA-256 `c73b1b3de1efee2e30bc6ada804c2985789e1c11e8229ecfd52aa896de814a41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant88e9923bf9bbbcd703acda83adf70469ed56c216f98e5e46dbc51f4f2a2693e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88e9923bf9bbbcd703acda83adf70469ed56c216f98e5e46dbc51f4f2a2693e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variant88e9923bf9bbbcd703acda83adf70469ed56c216f98e5e46dbc51f4f2a2693e3","mathematical_subject":"Foundations.Unclassified","original_sha256":"88e9923bf9bbbcd703acda83adf70469ed56c216f98e5e46dbc51f4f2a2693e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/dependency-recovery-source/source/88e9923bf9bbbcd703acda83adf70469ed56c216f98e5e46dbc51f4f2a2693e3.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variant88e9923bf9bbbcd703acda83adf70469ed56c216f98e5e46dbc51f4f2a2693e3

# Publication and verification records

## Authority and identity

Formal source contains mathematical declarations. The source registry binds
persistent theorem IDs to semantic Lean modules and declarations. Git identifies
immutable source states. Lean checks formal proofs. Ghost presents results and
links to their verification records.

These identities are separate: a theorem ID belongs to the result, a Lean name
belongs to the mathematics, and a Ghost slug belongs to presentation. A Ghost
article or numerical experiment is not a formal proof.

The repository currently contains no registered published theorem. The `T-017`
examples below describe a future workflow only. No publication tag, certificate,
or `#kernel-verified` claim should be created for these examples.

## Publication gate

Before granting `#kernel-verified` status, the publication system must verify an
immutable source commit and:

1. Reproduce its checked-in Lean toolchain and exact dependency manifest.
2. Pass the local build and lint gates with warnings treated as errors.
3. Resolve the registry's module and fully qualified declaration, and check the
   claimed statement and result kind.
4. Audit the declaration's transitive axiom dependencies, reject `sorryAx`, and
   record and review the remaining foundational axioms and explicit assumptions.
5. Bind the theorem ID, declaration, module, source commit, toolchain, and
   dependency manifest in the generated verification record.

The source `scripts/verify.sh` gate now resolves registered theorem targets and
runs exact `#print` / `#print axioms` audits through
`scripts/verify-registry.sh`. That is still only the source-acceptance layer: it
does not create immutable theorem tags, generate release-bound certificates, or
synchronize Ghost. Those publication operations must be performed against the
exact immutable source commit. Preserve the distinction between a defined
proposition, a conditional theorem with explicit assumptions, and a proof of the
intended unconditional statement.

## Source metadata and generated evidence

The committed registry contains stable source metadata only. Do not add
`commit_sha`, `verified_at`, `build_id`, or `certificate_hash` fields to theorem
source entries. A certificate that contains a commit hash cannot live in the
same commit whose hash it purports to identify.

Use this order:

```text
source commit
  -> immutable commit SHA
  -> verification of that commit
  -> generated certificate
  -> CI artifact, release artifact, or publication storage
```

Local generated output belongs in ignored `artifacts/`. Certificates attest to
completed Git objects and remain external to their authoritative source commits.
Do not write generated verification metadata back into those source commits.

## Immutable publication versions

Freeze each published version with an annotated tag, using
`theorem/t-017/v1`, `theorem/t-017/v2`, and so on. For a real, verified `T-017`,
the commands would resemble:

```sh
git tag -a theorem/t-017/v1 <verified-commit-sha> \
  -m "T-017: Finite Holonomy Resolution — publication v1"
git show theorem/t-017/v1
```

Replace the placeholder with the exact verified commit. Inspect the tag and
record both the tag name and its resolved source commit. Never move, delete, or
reuse an existing publication tag to revise a result. Pushing a tag requires an
explicit request, just as remote branch changes do.

Ghost should record the theorem ID, Lean declaration, Git tag, and Git commit,
and refer to the associated verification evidence. Never bind a publication
merely to `main`, `HEAD`, or `latest`; those references move.

Never silently change a published statement. A materially changed proposition
requires a new version or, when its identity has changed, a new theorem ID.
Preserve prior source commits, tags, statements, and verification evidence so
earlier versions remain inspectable.
````
