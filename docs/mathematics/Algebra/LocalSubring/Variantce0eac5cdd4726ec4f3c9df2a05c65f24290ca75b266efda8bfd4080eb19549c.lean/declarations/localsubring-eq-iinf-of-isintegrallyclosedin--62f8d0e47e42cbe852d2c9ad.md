# LocalSubring.eq_iInf_of_isIntegrallyClosedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c6f0216-6570-6501-cc37-3a7316528f2f",
  "kind": "lemma",
  "lexical_name": "LocalSubring.eq_iInf_of_isIntegrallyClosedIn",
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
  "slug": "localsubring-eq-iinf-of-isintegrallyclosedin--62f8d0e47e42cbe852d2c9ad",
  "source": {
    "blob": "66831aa62e685be3d5f6edbf011aa14cba6d0f0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 215,
    "path": "GRWTSK/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62f8d0e47e42cbe852d2c9ad02a24863fd8d588f89215d7e24d77c5d13a670e1",
  "verification": {
    "reference": "docs/verification/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c6f0216-6570-6501-cc37-3a7316528f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocalSubring.eq_iInf_of_isIntegrallyClosedIn {R : LocalSubring K}
    [IsIntegrallyClosedIn R.toSubring K] :
    R.toSubring = ⨅ V : {V : ValuationSubring K // R ≤ V.toLocalSubring}, V.1.toSubring :=
  le_antisymm (le_iInf fun V ↦ V.2.1) fun _ h ↦ of_not_not fun hxR ↦
    have ⟨V, hV⟩ := R.exists_le_valuationSubring_of_isIntegrallyClosedIn hxR
    hV.2 (iInf_le_of_le (α := Subring K) ⟨V, hV.1⟩ le_rfl h)

/-- The integral closure of a subset in a field is the intersection of all valuation subrings
containing it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalSubring/Variantce0eac5cdd4726ec4f3c9df2a05c65f24290ca75b266efda8bfd4080eb19549c.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66831aa62e685be3d5f6edbf011aa14cba6d0f0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
