# isApplicable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:784572c2828c293a9916e02bdd9e414cd2fca2792408e7610042e3a158c00eb2",
  "kind": "def",
  "lexical_name": "isApplicable",
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
  "slug": "isapplicable--b1ecec0710efde0f9e07ece5",
  "source": {
    "blob": "82ee4a2e03927a6553db513734bdfbe609b61ff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 200,
    "path": "GRWTSK/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1ecec0710efde0f9e07ece5adcf7b76062a051c402e666fa2b7d2e5a6c08dae",
  "verification": {
    "reference": "docs/verification/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:784572c2828c293a9916e02bdd9e414cd2fca2792408e7610042e3a158c00eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isApplicable (e : Expr) : Bool :=
  match_expr e with
  | HAdd.hAdd _ _ _ _ a b => isApplicable a && isApplicable b
  | HMul.hMul _ _ _ _ a b => isApplicable a && isApplicable b
  | HSub.hSub _ _ _ _ a b => isApplicable a && isApplicable b
  | HDiv.hDiv _ _ _ _ a b => isApplicable a && isApplicable b
  | HPow.hPow _ _ _ _ a b => isApplicable a && isApplicable b
  | Neg.neg _ _ a => isApplicable a
  | Inv.inv _ _ a => isApplicable a
  | OfNat.ofNat _ _ _ => true
  | NatCast.natCast _ _ _ => true
  | IntCast.intCast _ _ _ => true
  | _ => false

end FieldNormNum

open FieldNormNum

/--
Evaluates the `Field` expression `e` with type `type` using the given exponential threshold,
and returns `some (v, h)` s.t. `h : e = ofRat v` if successful.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ee4a2e03927a6553db513734bdfbe609b61ff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
