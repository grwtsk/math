# isNoetherian_iff_finite_of_jacobson_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc317a743a04c9d43e8c6be0d9269f2860f9c156",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaab6cf4-efeb-2cb7-2b3e-94546b08b50c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f21e31da-08b5-ec3e-606f-8fedae27e897",
  "kind": "theorem",
  "lexical_name": "isNoetherian_iff_finite_of_jacobson_fg",
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
  "slug": "isnoetherian-iff-finite-of-jacobson-fg--82daa498ca7653b2f9a171fc",
  "source": {
    "blob": "dc317a743a04c9d43e8c6be0d9269f2860f9c156",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82daa498ca7653b2f9a171fcd606a2ef80ccb02bc58911ec193fe137cc508355",
  "verification": {
    "reference": "docs/verification/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f21e31da-08b5-ec3e-606f-8fedae27e897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNoetherian_iff_finite_of_jacobson_fg (fg : (Ring.jacobson R).FG) :
    IsNoetherian R M ↔ Module.Finite R M :=
  ⟨fun _ ↦ inferInstance, IsSemiprimaryRing.induction R R M
    (P := fun M ↦ Module.Finite R M → IsNoetherian R M)
    (fun M _ _ _ _ _ _ ↦ (IsSemisimpleModule.finite_tfae.out 1 2).mp)
    fun M _ _ _ _ hs hq fin ↦ (isNoetherian_iff_submodule_quotient (Ring.jacobson R • ⊤)).mpr
      ⟨hs (.of_fg (.smul fg fin.1)), hq inferInstance⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HopkinsLevitzki/Variant572b9db69b76b14296dec889eadeac2dc8d109be09bf7a44f372ec6a779675e1.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc317a743a04c9d43e8c6be0d9269f2860f9c156` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
