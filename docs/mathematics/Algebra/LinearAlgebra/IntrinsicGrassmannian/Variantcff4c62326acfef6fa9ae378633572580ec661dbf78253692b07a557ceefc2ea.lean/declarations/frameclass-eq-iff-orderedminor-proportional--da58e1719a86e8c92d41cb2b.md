# frameClass_eq_iff_orderedMinor_proportional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67823496-5609-6e5b-75ff-3a0752893280",
  "kind": "theorem",
  "lexical_name": "frameClass_eq_iff_orderedMinor_proportional",
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
  "slug": "frameclass-eq-iff-orderedminor-proportional--da58e1719a86e8c92d41cb2b",
  "source": {
    "blob": "ff2c016b4bca01700b74d77e95685cd9b21a66e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 150,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da58e1719a86e8c92d41cb2b317d94de78c465e0c2cafc522c34cfc450d713dc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67823496-5609-6e5b-75ff-3a0752893280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frameClass_eq_iff_orderedMinor_proportional (A B : FullRankFrame k n) :
    Quotient.mk (framePresentationSetoid k n) A =
      Quotient.mk (framePresentationSetoid k n) B ↔
        ∃ t : ℝ, t ≠ 0 ∧ ∀ I : Fin k ↪o Fin n,
          orderedMinor B.val I = t * orderedMinor A.val I := by
  rw [frameClass_eq_iff_rowSpace]
  exact frameRowSpace_eq_iff_orderedMinor_proportional A.val B.val A.property B.property

/-- Each intrinsic plane is covered by an increasing pivot with a unique normal form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantcff4c62326acfef6fa9ae378633572580ec661dbf78253692b07a557ceefc2ea.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2c016b4bca01700b74d77e95685cd9b21a66e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
