# IsSimpleRing.exists_algEquiv_matrix_of_isAlgClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7bcbba08f5007ff0c0bd9a5af61c15d39e619bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc1b96aa-7297-e7f2-1a39-113b4bb5f6b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25ecb718-8a2f-2421-8028-4d627994f8af",
  "kind": "theorem",
  "lexical_name": "IsSimpleRing.exists_algEquiv_matrix_of_isAlgClosed",
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
  "slug": "issimplering-exists-algequiv-matrix-of-isalgclosed--959aa30fa780c5a977d93ed0",
  "source": {
    "blob": "a7bcbba08f5007ff0c0bd9a5af61c15d39e619bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 13,
    "path": "GRWTSK/Algebra/IsAlgClosed/Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:959aa30fa780c5a977d93ed0f0d405acc0c67e2932f14fa1272d30475f076aba",
  "verification": {
    "reference": "docs/verification/Algebra/IsAlgClosed/Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ecb718-8a2f-2421-8028-4d627994f8af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSimpleRing.exists_algEquiv_matrix_of_isAlgClosed (F R) [Field F] [IsAlgClosed F]
    [Ring R] [IsSimpleRing R] [Algebra F R] [FiniteDimensional F R] :
    ∃ (n : ℕ) (_ : NeZero n), Nonempty (R ≃ₐ[F] Matrix (Fin n) (Fin n) F) :=
  have := IsArtinianRing.of_finite F R
  have ⟨n, hn, D, _, _, _, ⟨e⟩⟩ := exists_algEquiv_matrix_divisionRing_finite F R
  ⟨n, hn, ⟨e.trans <| .mapMatrix <| .symm <| .ofBijective (Algebra.ofId F D)
    IsAlgClosed.algebraMap_bijective_of_isIntegral⟩⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsAlgClosed/Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsAlgClosed/Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7bcbba08f5007ff0c0bd9a5af61c15d39e619bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
