# Proof-checking source roles


Mathematical subject, source role, logical status, and verification outcome are
four different facts. The consolidation keeps them independently inspectable.

A reusable definition or theorem belongs in its mathematical library module.
A positive check imports that module and confirms an intended contract. A
negative control states a deliberately invalid proof attempt and succeeds only
when Lean rejects the intended mathematical defect. An audit driver inspects
declaration ownership, dependencies, or axioms without becoming part of the
public mathematical library.

These roles are represented physically below the relevant object:

```text
GRWTSK/<Subject>/<Object>/Checks/Positive/<Name>.lean
GRWTSK/<Subject>/<Object>/Checks/Negative/<Name>.lean
GRWTSK/<Subject>/<Object>/Checks/<AuditName>.lean
```

The public umbrella imports only library modules. Validation modules are run by
their cataloged entry points, and a missing import, missing file, syntax error,
or unavailable dependency does not count as a mathematical rejection.

See the source-layout reference (artifact:gitblob:18548a1c7e77002331dd18e929aa89fadf8af9c3) and the
current consolidation report (artifact:gitblob:a0aee0a59e806de6638a059af9df7dd22359b507).


**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Logic/ProofChecking/RepositoryConformance.lean`](../../../../GRWTSK/Logic/ProofChecking/RepositoryConformance.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 19 |
| Theorem/lemma commands | 6 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
