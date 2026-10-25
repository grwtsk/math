# Theorems.rewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af50a2368029cb729640c70346a7e940f82f65c32c5257e197507ebd3dd01394",
  "kind": "def",
  "lexical_name": "Theorems.rewrite",
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
  "slug": "theorems-rewrite--116cb5ff19bc0c1cf0a4f889",
  "source": {
    "blob": "64b90c73748bd68df8ea4fc5419b480058d93318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant4b608710f141ed98bce2748b004730a12b47dbbb068acfe29b048beb66542824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:116cb5ff19bc0c1cf0a4f889860a0ab9caea76e2ecc2a0a0b99cba060137c3ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant4b608710f141ed98bce2748b004730a12b47dbbb068acfe29b048beb66542824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af50a2368029cb729640c70346a7e940f82f65c32c5257e197507ebd3dd01394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Theorems.rewrite (thms : Theorems) (d : Discharger := dischargeNone) : Simproc := fun e => do
  -- Track `cd` across all attempted theorems. If theorem A fails with cd=true
  -- and theorem B succeeds with cd=false, the result is still cd=true: in another
  -- context A might succeed (with higher priority) and produce a different result.
  let mut anyCD := false
  for (thm, numExtra) in thms.getMatchWithExtra e do
    let result ← if numExtra == 0 then
      thm.rewrite e d
    else
      simpOverApplied e numExtra (thm.rewrite · d)
    anyCD := anyCD || result.isContextDependent
    if !result.isRfl then
      return if anyCD && !result.isContextDependent then result.withContextDependent else result
  return mkRflResultCD anyCD

end Lean.Meta.Sym.Simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant4b608710f141ed98bce2748b004730a12b47dbbb068acfe29b048beb66542824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant4b608710f141ed98bce2748b004730a12b47dbbb068acfe29b048beb66542824.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b90c73748bd68df8ea4fc5419b480058d93318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
