# instRepr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93db725739c05cf532c9367461bec3b10cbae2db51bb1be1bae614275c05077c",
  "kind": "instance",
  "lexical_name": "instRepr",
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
  "slug": "instrepr--d2613ed8322d668cf9253eac",
  "source": {
    "blob": "7551ce1829b3bfead94ce5f8325fa18d18ebb515",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 527,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2613ed8322d668cf9253eacdbb1160fdb5e31425d1542461e078acb8662f17f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93db725739c05cf532c9367461bec3b10cbae2db51bb1be1bae614275c05077c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe instance instRepr [Repr α] : Repr (Perm α) where
  reprPrec f prec :=
    -- Obtain a list of formats which represents disjoint cycles.
    letI l := Quot.unquot <| Multiset.map repr <| Multiset.pmap toCycle
      (Perm.cycleFactorsFinset f).val
      fun _ hg => (mem_cycleFactorsFinset_iff.mp (Finset.mem_def.mpr hg)).left
    -- And intercalate `*`s.
    match l with
    | []  => "1"
    | [f] => f
    | l   =>
      -- multiple terms, use `*` precedence
      (if prec ≥ 70 then Lean.Format.paren else id)
      (Lean.Format.fill
        (Lean.Format.joinSep l (" *" ++ Lean.Format.line)))

end Equiv.Perm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7551ce1829b3bfead94ce5f8325fa18d18ebb515` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
