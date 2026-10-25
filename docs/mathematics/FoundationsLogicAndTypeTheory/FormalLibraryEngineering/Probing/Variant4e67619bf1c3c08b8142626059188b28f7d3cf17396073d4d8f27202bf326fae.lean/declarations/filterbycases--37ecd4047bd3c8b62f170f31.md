# filterByCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28bc748a2a2cbf1ea6f0bce54fd6ae1876793b2a29944ba21bc73d07350b762f",
  "kind": "def",
  "lexical_name": "filterByCases",
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
  "slug": "filterbycases--37ecd4047bd3c8b62f170f31",
  "source": {
    "blob": "17c2bdb008fa5f6bc97f04978ad0dcdd92528e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Probing/Variant4e67619bf1c3c08b8142626059188b28f7d3cf17396073d4d8f27202bf326fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37ecd4047bd3c8b62f170f31391a00e79fc7b08d67706bbdc4e2421dba0ed818",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Probing/Variant4e67619bf1c3c08b8142626059188b28f7d3cf17396073d4d8f27202bf326fae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28bc748a2a2cbf1ea6f0bce54fd6ae1876793b2a29944ba21bc73d07350b762f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def filterByCases (pu : Purity) (f : Cases pu → CompilerM Bool) : Probe (Decl pu) (Decl pu) :=
  filter (·.value.isCodeAndM go)
where
  go : Code pu → CompilerM Bool
  | .let _ k => go k
  | .fun decl k _ | .jp decl k => go decl.value <||> go k
  | .cases cs => do if (← f cs) then return true else cs.alts.anyM (go ·.getCode)
  | .jmp .. | .return .. | .unreach .. => return false
  | .sset (k := k) .. | .uset (k := k) .. | .inc (k := k) .. | .dec (k := k) .. | .del (k := k) ..
  | .setTag (k := k) .. | .oset (k := k) .. => go k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Probing/Variant4e67619bf1c3c08b8142626059188b28f7d3cf17396073d4d8f27202bf326fae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Probing/Variant4e67619bf1c3c08b8142626059188b28f7d3cf17396073d4d8f27202bf326fae.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17c2bdb008fa5f6bc97f04978ad0dcdd92528e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
