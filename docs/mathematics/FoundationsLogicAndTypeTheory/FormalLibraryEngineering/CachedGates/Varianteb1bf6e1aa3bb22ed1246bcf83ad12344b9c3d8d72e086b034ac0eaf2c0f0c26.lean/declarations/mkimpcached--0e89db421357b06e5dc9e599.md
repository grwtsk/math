# mkImpCached

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88730ede09d04f5c427a3c6936490a459cdb7a2755d4575f97152b6e251e4767",
  "kind": "def",
  "lexical_name": "mkImpCached",
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
  "slug": "mkimpcached--0e89db421357b06e5dc9e599",
  "source": {
    "blob": "3a823c735cfe4a3d03a7a797202c7c200a28f1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Varianteb1bf6e1aa3bb22ed1246bcf83ad12344b9c3d8d72e086b034ac0eaf2c0f0c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e89db421357b06e5dc9e599f3a253221f26bb686993b4a1cdba1232a63adb93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Varianteb1bf6e1aa3bb22ed1246bcf83ad12344b9c3d8d72e086b034ac0eaf2c0f0c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88730ede09d04f5c427a3c6936490a459cdb7a2755d4575f97152b6e251e4767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkImpCached (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
  -- a -> b = (invert (a and (invert b)))
  let res := aig.mkGateCached <| input.invert false true
  let aig := res.aig
  let auxRef := res.ref
  ⟨aig, auxRef.not⟩

end AIG

end Sat
end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Varianteb1bf6e1aa3bb22ed1246bcf83ad12344b9c3d8d72e086b034ac0eaf2c0f0c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGates/Varianteb1bf6e1aa3bb22ed1246bcf83ad12344b9c3d8d72e086b034ac0eaf2c0f0c26.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a823c735cfe4a3d03a7a797202c7c200a28f1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
