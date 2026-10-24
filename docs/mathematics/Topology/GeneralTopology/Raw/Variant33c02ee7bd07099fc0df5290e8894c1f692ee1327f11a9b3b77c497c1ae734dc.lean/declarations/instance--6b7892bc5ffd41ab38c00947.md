# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dc080183be3bd8b6c0a1d1103d3f02f2358ce1aa7a0afbbe09610a7da6f4bdf",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6b7892bc5ffd41ab38c00947",
  "source": {
    "blob": "3b6d0d128680897e1df12be5af91951b65800b00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Raw/Variant33c02ee7bd07099fc0df5290e8894c1f692ee1327f11a9b3b77c497c1ae734dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b7892bc5ffd41ab38c00947b1a12ebe74380901fb2add53cba92b3c5abc735a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Raw/Variant33c02ee7bd07099fc0df5290e8894c1f692ee1327f11a9b3b77c497c1ae734dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dc080183be3bd8b6c0a1d1103d3f02f2358ce1aa7a0afbbe09610a7da6f4bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Repr α] [Repr β] : Repr (Raw α β) where
  reprPrec m prec := Repr.addAppParen ("Std.HashMap.Raw.ofList " ++ reprArg m.toList) prec

end Unverified

/--
Well-formedness predicate for hash maps. Users of `HashMap` will not need to interact with this.
Users of `HashMap.Raw` will need to provide proofs of `WF` to lemmas and should use lemmas
`WF.empty` and `WF.insert` (which are always named exactly like the operations they are about) to
show that map operations preserve well-formedness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Raw/Variant33c02ee7bd07099fc0df5290e8894c1f692ee1327f11a9b3b77c497c1ae734dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Raw/Variant33c02ee7bd07099fc0df5290e8894c1f692ee1327f11a9b3b77c497c1ae734dc.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6d0d128680897e1df12be5af91951b65800b00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
