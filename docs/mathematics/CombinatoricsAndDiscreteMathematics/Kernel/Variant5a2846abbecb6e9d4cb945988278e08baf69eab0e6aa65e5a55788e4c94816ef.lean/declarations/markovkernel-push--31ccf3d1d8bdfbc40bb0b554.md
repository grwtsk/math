# MarkovKernel.push

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5a874722c7b5e716c95c49a18a8f972785d9ade658322cc5d7fbce8f0edae15",
  "kind": "def",
  "lexical_name": "MarkovKernel.push",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "markovkernel-push--31ccf3d1d8bdfbc40bb0b554",
  "source": {
    "blob": "5e843a4de1406b7e0d9ffd05f3ce2ec5c09a4002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31ccf3d1d8bdfbc40bb0b5543bf3c597c1ab2e0d03a52499181f987dcca2fef8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5a874722c7b5e716c95c49a18a8f972785d9ade658322cc5d7fbce8f0edae15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MarkovKernel.push
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (law : FiniteLaw X) :
    FiniteLaw X where
  mass target :=
    ∑ source, law.mass source * kernel.transition source target
  nonnegative target := by
    apply Finset.sum_nonneg
    intro source _
    exact mul_nonneg
      (law.nonnegative source)
      (kernel.nonnegative source target)
  totalMass := by
    rw [Finset.sum_comm]
    calc
      (∑ source, ∑ target,
          law.mass source * kernel.transition source target) =
          ∑ source,
            law.mass source *
              (∑ target, kernel.transition source target) := by
                apply Finset.sum_congr rfl
                intro source _
                rw [Finset.mul_sum]
      _ = ∑ source, law.mass source := by
            apply Finset.sum_congr rfl
            intro source _
            rw [kernel.rowMass source, mul_one]
      _ = 1 := law.totalMass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e843a4de1406b7e0d9ffd05f3ce2ec5c09a4002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
