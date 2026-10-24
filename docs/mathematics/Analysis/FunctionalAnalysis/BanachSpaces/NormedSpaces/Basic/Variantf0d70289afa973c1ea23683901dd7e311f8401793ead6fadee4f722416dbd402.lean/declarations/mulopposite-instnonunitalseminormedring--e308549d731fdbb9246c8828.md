# MulOpposite.instNonUnitalSeminormedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8035164644002d779b11b560d7cec9650e51b56e0709d2117b92219e14fa0fae",
  "kind": "instance",
  "lexical_name": "MulOpposite.instNonUnitalSeminormedRing",
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
  "slug": "mulopposite-instnonunitalseminormedring--e308549d731fdbb9246c8828",
  "source": {
    "blob": "ed5fcd5ae941a98b39c63c3cce9b3ed2575709f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 305,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e308549d731fdbb9246c882899b5efa98187164a48036a0a6f31b78e07866fe6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8035164644002d779b11b560d7cec9650e51b56e0709d2117b92219e14fa0fae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MulOpposite.instNonUnitalSeminormedRing : NonUnitalSeminormedRing αᵐᵒᵖ where
  __ := instNonUnitalRing
  __ := instSeminormedAddCommGroup
  norm_mul_le := MulOpposite.rec' fun x ↦ MulOpposite.rec' fun y ↦
    (norm_mul_le y x).trans_eq (mul_comm _ _)

end NonUnitalSeminormedRing

section SeminormedRing

variable [SeminormedRing α] {a b c : α}

/-- A subalgebra of a seminormed ring is also a seminormed ring, with the restriction of the
norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf0d70289afa973c1ea23683901dd7e311f8401793ead6fadee4f722416dbd402.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5fcd5ae941a98b39c63c3cce9b3ed2575709f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
