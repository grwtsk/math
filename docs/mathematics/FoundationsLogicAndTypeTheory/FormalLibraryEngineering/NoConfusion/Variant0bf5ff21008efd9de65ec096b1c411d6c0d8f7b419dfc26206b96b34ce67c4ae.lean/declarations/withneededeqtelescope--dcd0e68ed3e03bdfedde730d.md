# withNeededEqTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6a20160392afc74147f23acfa6b5ab2985903ab4e037364323c77d3d63e7145",
  "kind": "def",
  "lexical_name": "withNeededEqTelescope",
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
  "slug": "withneededeqtelescope--dcd0e68ed3e03bdfedde730d",
  "source": {
    "blob": "22cac14cf82b8c20dc75c36b705e00f1dade1df3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcd0e68ed3e03bdfedde730dc41e8cace66c7b64102ba443aa392f568fd968cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6a20160392afc74147f23acfa6b5ab2985903ab4e037364323c77d3d63e7145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withNeededEqTelescope [Inhabited α] (xs ys : Array Expr) (k : Array Expr → Array Expr → MetaM α) : MetaM α := do
  go xs.toList ys.toList #[] #[]
where
  go | x::xs', y::ys', vs, eqs => do
      if !xs'.isEmpty && (← isDefEq x y) then
        let eq ← mkEqRefl x
        go xs' ys' vs (eqs.push eq)
      else
        let eq ← mkEqHEq x y
        let name := if xs.size > 1 then (`eq).appendIndexAfter (eqs.size + 1) else `eq
        withLocalDeclD name eq fun v =>
          go xs' ys' (vs.push v) (eqs.push v)
      | _, _, vs, eqs => k vs eqs

/--
Telescoping `mkEqNDRec`: given
* motive `∀ y1 .. yn, P y1 .. yn`
* expression of type `P x1 .. xn`
* produces an expression of type (x1 = y1) → .. → (xn = yn) → P y1 .. yn
  (possibly using `HEq`)
produce an expression of type `motive y1 … yn`
by repeatedly applying `Eq.ndRec` (and `eq_of_heq` if needed).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoConfusion/Variant0bf5ff21008efd9de65ec096b1c411d6c0d8f7b419dfc26206b96b34ce67c4ae.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22cac14cf82b8c20dc75c36b705e00f1dade1df3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
