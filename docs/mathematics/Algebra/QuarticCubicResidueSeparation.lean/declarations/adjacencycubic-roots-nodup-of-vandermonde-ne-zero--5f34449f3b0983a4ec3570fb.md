# adjacencyCubic_roots_nodup_of_vandermonde_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a231eb29d6d21c38dedb011286c15be508b7a9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/Algebra/QuarticCubicResidueSeparation.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4980602-27cc-b71b-8894-d969485d10c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:508bd7b0-bc39-ae02-47f6-b730f30cb61c",
  "kind": "theorem",
  "lexical_name": "adjacencyCubic_roots_nodup_of_vandermonde_ne_zero",
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
  "slug": "adjacencycubic-roots-nodup-of-vandermonde-ne-zero--5f34449f3b0983a4ec3570fb",
  "source": {
    "blob": "4a231eb29d6d21c38dedb011286c15be508b7a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 40,
    "path": "GRWTSK/Algebra/QuarticCubicResidueSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f34449f3b0983a4ec3570fb2ef75a79d3c0ec86c458735d86db98719783eec5",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticCubicResidueSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:508bd7b0-bc39-ae02-47f6-b730f30cb61c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacencyCubic_roots_nodup_of_vandermonde_ne_zero
    (a b c d : F)
    (hs : (adjacencyCubic
      (GRWTSK.Algebra.PolygonalQuarticDescent.eOne a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eTwo a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eThree a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eFour a b c d)).toPoly.Splits)
    (hv : quarticVandermonde a b c d ≠ 0) :
    (adjacencyCubic
      (GRWTSK.Algebra.PolygonalQuarticDescent.eOne a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eTwo a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eThree a b c d)
      (GRWTSK.Algebra.PolygonalQuarticDescent.eFour a b c d)).toPoly.roots.Nodup := by
  apply adjacencyCubic_roots_nodup_of_discr_ne_zero _ _ _ _ hs
  rw [adjacencyCubic_discr_eq_quarticVandermonde_sq]
  exact pow_ne_zero 2 hv

end
end GRWTSK.Algebra.QuarticCubicResidueSeparation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticCubicResidueSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticCubicResidueSeparation.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a231eb29d6d21c38dedb011286c15be508b7a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
