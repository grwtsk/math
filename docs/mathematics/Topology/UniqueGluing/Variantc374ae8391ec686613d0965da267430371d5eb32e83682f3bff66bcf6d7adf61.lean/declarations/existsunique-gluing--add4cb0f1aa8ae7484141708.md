# existsUnique_gluing'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f147fd3e-c8fe-a545-68f4-80dfbebaac7c",
  "kind": "theorem",
  "lexical_name": "existsUnique_gluing'",
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
  "slug": "existsunique-gluing--add4cb0f1aa8ae7484141708",
  "source": {
    "blob": "e1557d076c227b04889fc3b1202977571b43a66e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 194,
    "path": "GRWTSK/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:add4cb0f1aa8ae7484141708947a114439ba8fd132e8ae890865954324438789",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f147fd3e-c8fe-a545-68f4-80dfbebaac7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_gluing' (V : Opens X) (iUV : ∀ i : ι, U i ⟶ V) (hcover : V ≤ iSup U)
    (sf : ∀ i : ι, ToType (F.1.obj (op (U i)))) (h : IsCompatible F.1 U sf) :
    ∃! s : ToType (F.1.obj (op V)), ∀ i : ι, F.1.map (iUV i).op s = sf i := by
  have V_eq_supr_U : V = iSup U := le_antisymm hcover (iSup_le fun i => (iUV i).le)
  obtain ⟨gl, gl_spec, gl_uniq⟩ := F.existsUnique_gluing U sf h
  refine ⟨F.1.map (eqToHom V_eq_supr_U).op gl, ?_, ?_⟩
  · intro i
    rw [← ConcreteCategory.comp_apply, ← F.1.map_comp]
    exact gl_spec i
  · intro gl' gl'_spec
    convert congr_arg _ (gl_uniq (F.1.map (eqToHom V_eq_supr_U.symm).op gl') fun i => _) <;>
      rw [← ConcreteCategory.comp_apply, ← F.1.map_comp]
    · rw [eqToHom_op, eqToHom_op, eqToHom_trans, eqToHom_refl, F.1.map_id,
        ConcreteCategory.id_apply]
    · exact gl'_spec i

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variantc374ae8391ec686613d0965da267430371d5eb32e83682f3bff66bcf6d7adf61.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1557d076c227b04889fc3b1202977571b43a66e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
