# $unsafeGet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4443b818f63a4b8f8a708a9cb217c0018bebfb6fbf3a2b7b5c24e86615ed32cb",
  "kind": "def",
  "lexical_name": "$unsafeGet",
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
  "slug": "unsafeget--fdea0cb64833ce2f34772924",
  "source": {
    "blob": "7cf5e852d16f12227641064e5be051a164843462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpaqueType/Variantfc3b1c45273389a13a206ee8981c34b84fa98eabc037b1a4b6ee56edb197d0fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdea0cb64833ce2f3477292449e02d54428402a1e85ae978b4bd88b33e0f65a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpaqueType/Variantfc3b1c45273389a13a206ee8981c34b84fa98eabc037b1a4b6ee56edb197d0fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4443b818f63a4b8f8a708a9cb217c0018bebfb6fbf3a2b7b5c24e86615ed32cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  @[inline] private unsafe def $unsafeGet : $oty $args* → $ty $args* := unsafeCast
  @[implemented_by $unsafeGet] $[$vis?:visibility]? opaque $get $[{$args}]* : $oty $args* → $ty $args*
  $[$vis?:visibility]? instance $instCoeGet:ident : Coe ($oty $args*) ($ty $args*) := ⟨$get⟩

  $[$vis?:visibility]? instance [Inhabited ($ty $args*)] : Inhabited ($oty $args*) := ⟨$mk default⟩
  end $oty
  )
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpaqueType/Variantfc3b1c45273389a13a206ee8981c34b84fa98eabc037b1a4b6ee56edb197d0fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpaqueType/Variantfc3b1c45273389a13a206ee8981c34b84fa98eabc037b1a4b6ee56edb197d0fc.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf5e852d16f12227641064e5be051a164843462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
