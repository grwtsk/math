# prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecb9a7bf1338383dd9244d2010d2a073f7bae570bf34dc62d010d24756588528",
  "kind": "def",
  "lexical_name": "prod",
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
  "slug": "prod--f59ecea880b926cede99cb59",
  "source": {
    "blob": "4943c40794fb12c832db5e6cce552d26a25d15f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f59ecea880b926cede99cb591447fb3e88f881e991a5104d5fd7840c3c3348b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecb9a7bf1338383dd9244d2010d2a073f7bae570bf34dc62d010d24756588528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def prod [Mul α] [One α] : ∀ {m} (_ : Fin m → α), α
  | 0, _ => 1
  | 1, v => v 0
  | _ + 2, v => prod (fun i => v (Fin.castSucc i)) * v (Fin.last _)

/-- This can be used to prove
```lean
example [CommMonoid α] (a : Fin 3 → α) : ∏ i, a i = a 0 * a 1 * a 2 :=
  (prod_eq _).symm
```
-/
@[to_additive (attr := simp)
"This can be used to prove
```lean
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant1bd8b7b52ca3ec90967259da55854f7f35e3f4f2f5b27ed2a596db92110b521b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4943c40794fb12c832db5e6cce552d26a25d15f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
