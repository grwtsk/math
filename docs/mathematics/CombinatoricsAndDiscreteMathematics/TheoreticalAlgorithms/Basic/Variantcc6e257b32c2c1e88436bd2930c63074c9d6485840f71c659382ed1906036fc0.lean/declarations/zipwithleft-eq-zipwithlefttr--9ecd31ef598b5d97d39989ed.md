# zipWithLeft_eq_zipWithLeftTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57d88668-ee30-bab0-0d30-3da42b6284d0",
  "kind": "theorem",
  "lexical_name": "zipWithLeft_eq_zipWithLeftTR",
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
  "slug": "zipwithleft-eq-zipwithlefttr--9ecd31ef598b5d97d39989ed",
  "source": {
    "blob": "e11053fea25281b26f9d73e46addf433b9a1dc92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 836,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcc6e257b32c2c1e88436bd2930c63074c9d6485840f71c659382ed1906036fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ecd31ef598b5d97d39989eddb23a55144e82d7e73659b870aca356d48890523",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcc6e257b32c2c1e88436bd2930c63074c9d6485840f71c659382ed1906036fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d88668-ee30-bab0-0d30-3da42b6284d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[csimp] theorem zipWithLeft_eq_zipWithLeftTR : @zipWithLeft = @zipWithLeftTR := by
  funext α β γ f as bs; simp [zipWithLeftTR]
  let rec go (acc) : ∀ as bs, zipWithLeftTR.go f as bs acc = acc.toList ++ as.zipWithLeft f bs
  | [], bs => by simp [zipWithLeftTR.go]
  | _::_, [] => by simp [zipWithLeftTR.go]
  | a::as, b::bs => by simp [zipWithLeftTR.go, go _ as bs]
  simp [go]

/--
Right-biased version of `List.zipWith`. `zipWithRight f as bs` applies `f` to each
pair `aᵢ ∈ as` and `bᵢ ‌∈ bs`. If `as` is shorter than `bs`, `f` is applied to
`none` for the remaining `bᵢ`.
```
zipWithRight prod.mk [1, 2] ['a'] = [(some 1, 'a')]
zipWithRight prod.mk [1] ['a', 'b'] = [(some 1, 'a'), (none, 'b')]
zipWithRight f as bs = (zipWithRight' f as bs).fst
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcc6e257b32c2c1e88436bd2930c63074c9d6485840f71c659382ed1906036fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcc6e257b32c2c1e88436bd2930c63074c9d6485840f71c659382ed1906036fc0.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e11053fea25281b26f9d73e46addf433b9a1dc92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
