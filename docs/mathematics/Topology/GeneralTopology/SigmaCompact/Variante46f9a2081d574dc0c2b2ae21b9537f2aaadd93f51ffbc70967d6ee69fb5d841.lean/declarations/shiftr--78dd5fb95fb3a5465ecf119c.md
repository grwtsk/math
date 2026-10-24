# shiftr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4595116265087b396a070bdd43d84a8d288f6469026f9d238ea85b1c199fafd",
  "kind": "def",
  "lexical_name": "shiftr",
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
  "slug": "shiftr--78dd5fb95fb3a5465ecf119c",
  "source": {
    "blob": "b762bdc1d995cbd762640a9b95541f9205068dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 398,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variante46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78dd5fb95fb3a5465ecf119c8d051c7e6572c320cd0e999b90dc04cd061deca4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variante46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4595116265087b396a070bdd43d84a8d288f6469026f9d238ea85b1c199fafd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftr : CompactExhaustion X where
  toFun n := Nat.casesOn n ∅ K
  isCompact' n := Nat.casesOn n isCompact_empty K.isCompact
  subset_interior_succ' n := Nat.casesOn n (empty_subset _) K.subset_interior_succ
  iUnion_eq' := iUnion_eq_univ_iff.2 fun x => ⟨K.find x + 1, K.mem_find x⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variante46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variante46f9a2081d574dc0c2b2ae21b9537f2aaadd93f51ffbc70967d6ee69fb5d841.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b762bdc1d995cbd762640a9b95541f9205068dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
