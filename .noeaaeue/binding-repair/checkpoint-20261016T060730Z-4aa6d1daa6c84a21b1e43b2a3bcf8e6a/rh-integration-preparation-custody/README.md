# Inert paired selected-source integration proposal

The installer has NOT been executed, including dry-run. Preparation only read
shared files and wrote this newly created ignored directory.

Review `change-manifest.json`, the ten exact `preimages/` and `proposals/`, and
the source/receipt snapshots in `bound-inputs/`. All six source hashes, both
receipt hashes and every receipt `source_hashes` entry matched during preparation.
`preservation_audit` records semantic equality checks; exact old bytes remain.

The future owner may explicitly run `python3 -B <absolute installer path>` for a
read-only dry-run after quiet handoff. Only `--apply` permits the ten reviewed
per-file writes. The exact destination set is hard-coded. ALL destinations,
bound inputs, archived preimages and proposals are checked before writing and
again between writes; the individual destination is checked immediately before
atomic replace. New guides use atomic no-clobber installation. Leaf and ancestor
symlinks, nonregular files, appeared new files and byte/mode drift refuse.

This is NOT a multi-file atomic transaction. A later drift stops and preserves
the already-written subset, journal and observed remaining variants under this
directory. There is no rollback/reset. The retained create-only owner claim
prevents automatic replay after interruption; reconcile manually with a new
proposal. The owner must provide actual quiet shared ownership.

No generated source catalog, source observation, current contract, navigation,
native replay, Git operation or historical cursor is modified by the installer.
The owner follows the current workflow for rendering, required normal/-O checks,
new current contracts and source-qualified public replay after these writes.
`post-validation-event.intent.json` is a separate uninstalled proposal: mark the
old request paid only in a NEW event after actual final validation. Installation
alone leaves validation incomplete and the original request unpaid.

This r2 bundle preserves r1 completely. Only the two new guide verification
paragraphs and proposed current active-row scope wording differ. They are
timeless: selected receipts cover their recorded closures, while public
acceptance requires separately bound checkpoint evidence. No source, receipt,
preimage, other proposal or historical status was rebound. The installer
is byte-identical to r1 and has never been executed, including dry-run.
