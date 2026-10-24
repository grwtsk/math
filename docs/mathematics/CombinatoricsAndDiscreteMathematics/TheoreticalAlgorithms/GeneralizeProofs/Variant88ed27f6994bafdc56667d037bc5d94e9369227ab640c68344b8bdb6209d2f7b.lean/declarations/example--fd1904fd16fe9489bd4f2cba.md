# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14a0d492def5496f4cc3d3ce14e911d2290578d2c0adf23a59f16039cb8bf490",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--fd1904fd16fe9489bd4f2cba",
  "source": {
    "blob": "e51a32eaf0c447c9ba47a185ab3484ce6171f1bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant88ed27f6994bafdc56667d037bc5d94e9369227ab640c68344b8bdb6209d2f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd1904fd16fe9489bd4f2cba03085b7dfe2c48948eb6d1301db4ad1a26e5a43e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant88ed27f6994bafdc56667d037bc5d94e9369227ab640c68344b8bdb6209d2f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14a0d492def5496f4cc3d3ce14e911d2290578d2c0adf23a59f16039cb8bf490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (H : ∀ y, ∃ (x : ℕ) (h : x < y), Classical.choose (⟨x, h⟩ : ∃ x, x < y) < y) :
    ∀ y, ∃ (x : ℕ) (h : x < y), Classical.choose (⟨x, h⟩ : ∃ x, x < y) < y := by
  generalize_proofs a at *
  guard_hyp a :ₛ ∀ (y w : ℕ), w < y → ∃ x, x < y
  guard_hyp H :ₛ ∀ (y : ℕ), ∃ x h, Classical.choose (a y x h) < y
  guard_target =ₛ ∀ (y : ℕ), ∃ x h, Classical.choose (a y x h) < y
  exact H

namespace zulip1
/-!
https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/.60generalize_proofs.60.20sometimes.20silently.20has.20no.20effect/near/407162574
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant88ed27f6994bafdc56667d037bc5d94e9369227ab640c68344b8bdb6209d2f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GeneralizeProofs/Variant88ed27f6994bafdc56667d037bc5d94e9369227ab640c68344b8bdb6209d2f7b.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51a32eaf0c447c9ba47a185ab3484ce6171f1bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
