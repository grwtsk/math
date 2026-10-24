# KaehlerDifferential.isBaseChange_of_formallyEtale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04a923bd-0c38-3d78-408b-6ee2c537b322",
  "kind": "lemma",
  "lexical_name": "KaehlerDifferential.isBaseChange_of_formallyEtale",
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
  "slug": "kaehlerdifferential-isbasechange-of-formallyetale--9921d5cc363f34cda0bb1767",
  "source": {
    "blob": "d18ddd3379148e9a1f7571baceac8cb5e73722dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9921d5cc363f34cda0bb1767a05d0eaeb1aa1eb12f5de1faef4ac311ced79d6c",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04a923bd-0c38-3d78-408b-6ee2c537b322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma KaehlerDifferential.isBaseChange_of_formallyEtale [Algebra.FormallyEtale S T] :
    IsBaseChange T (map R R S T) := by
  change Function.Bijective _
  convert! (tensorKaehlerEquivOfFormallyEtale R S T).bijective using 1
  change _ = ((tensorKaehlerEquivOfFormallyEtale
    R S T).toLinearMap.restrictScalars S : T ⊗[S] Ω[S⁄R] → _)
  congr!
  ext
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d18ddd3379148e9a1f7571baceac8cb5e73722dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
