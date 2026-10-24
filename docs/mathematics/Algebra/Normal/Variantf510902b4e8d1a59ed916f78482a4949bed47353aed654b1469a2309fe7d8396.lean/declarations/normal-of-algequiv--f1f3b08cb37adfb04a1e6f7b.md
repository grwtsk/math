# Normal.of_algEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "975c3a1042f26579b615f68cc75c65736c9c4946",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b19018c3-fff3-7169-37d2-da631ce93fb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e337d208-e214-6457-9fb7-f290b1fef2ed",
  "kind": "theorem",
  "lexical_name": "Normal.of_algEquiv",
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
  "slug": "normal-of-algequiv--f1f3b08cb37adfb04a1e6f7b",
  "source": {
    "blob": "975c3a1042f26579b615f68cc75c65736c9c4946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1f3b08cb37adfb04a1e6f7bd569cc0d47995e038ca1b263ca01ccd9647c7526",
  "verification": {
    "reference": "docs/verification/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e337d208-e214-6457-9fb7-f290b1fef2ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Normal.of_algEquiv [h : Normal F E] (f : E ≃ₐ[F] E') : Normal F E' :=
  normal_iff.2 fun x => by
    cases' h.out (f.symm x) with hx hhx
    have H := map_isIntegral f.toAlgHom hx
    simp [AlgEquiv.toAlgHom_eq_coe] at H
    use H
    apply Polynomial.splits_of_splits_of_dvd (algebraMap F E') (minpoly.ne_zero hx)
    · rw [← AlgHom.comp_algebraMap f.toAlgHom]
      exact Polynomial.splits_comp_of_splits (algebraMap F E) f.toAlgHom.toRingHom hhx
    · apply minpoly.dvd _ _
      rw [← AddEquiv.map_eq_zero_iff f.symm.toAddEquiv]
      exact
        Eq.trans (Polynomial.aeval_algHom_apply f.symm.toAlgHom x (minpoly F (f.symm x))).symm
          (minpoly.aeval _ _)
#align normal.of_alg_equiv Normal.of_algEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975c3a1042f26579b615f68cc75c65736c9c4946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
