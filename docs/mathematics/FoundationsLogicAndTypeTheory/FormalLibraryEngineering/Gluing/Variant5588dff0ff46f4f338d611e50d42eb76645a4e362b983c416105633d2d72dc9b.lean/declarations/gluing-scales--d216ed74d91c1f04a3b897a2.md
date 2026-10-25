# gluing_scales

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbc83594-e49d-899a-a6a2-933fda1dacfa",
  "kind": "theorem",
  "lexical_name": "gluing_scales",
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
  "slug": "gluing-scales--d216ed74d91c1f04a3b897a2",
  "source": {
    "blob": "e1e09deb89b8cca33ff1e3f33e94699cab4fcb86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant5588dff0ff46f4f338d611e50d42eb76645a4e362b983c416105633d2d72dc9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d216ed74d91c1f04a3b897a27eaebe3f35e9027826d3dc14da3b9acef83206e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant5588dff0ff46f4f338d611e50d42eb76645a4e362b983c416105633d2d72dc9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc83594-e49d-899a-a6a2-933fda1dacfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gluing_scales
    {C : Think.Knowledge.Sheaf.FinCat} {V : C.Obj}
    (F : Think.Knowledge.Sheaf.Presheaf C)
    (c : Think.Knowledge.Sheaf.Cover C V)
    (s : (i : c.I) → F.Sec (c.U i))
    (cert : Think.Knowledge.Sheaf.GluingCertificate F c s) :
    ∀ n : Nat, ScaledGluing F c s n :=
by
  exact atScale_of_base (Think.Knowledge.Sheaf.gluing_sound F c s cert)

end Think.Epistemology.Induction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant5588dff0ff46f4f338d611e50d42eb76645a4e362b983c416105633d2d72dc9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant5588dff0ff46f4f338d611e50d42eb76645a4e362b983c416105633d2d72dc9b.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e09deb89b8cca33ff1e3f33e94699cab4fcb86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
