# erdos_233.variants.upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b765308-891a-0051-8c07-360c966d2faa",
  "kind": "theorem",
  "lexical_name": "erdos_233.variants.upper_bound",
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
  "slug": "erdos-233-variants-upper-bound--103af67db7e23cf17060d82b",
  "source": {
    "blob": "07f7982b65569fe8b456c151d42172af6b9786c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/233/Variantd828043093c7eb641f236f4a6967e0b84f76fdaa15d0506a976fbb00bf58420f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:103af67db7e23cf17060d82bd9b0c26bf91a716e0acee0528647ef6317a54b21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/233/Variantd828043093c7eb641f236f4a6967e0b84f76fdaa15d0506a976fbb00bf58420f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b765308-891a-0051-8c07-360c966d2faa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erdos_233.variants.upper_bound (h : RiemannHypothesis) :
    (fun N => ((∑ n ∈ Finset.range N, (primeGap n) ^ 2) : ℝ)) =O[atTop] fun N => N * (log N)^4 := by
  sorry

/--
The prime number theorem immediately implies a lower bound of $\gg N(\log N)^2$ for the sum of
squares of gaps between consecutive primes.

Formal proof linked here provided by AlphaProof.
-/
@[category research solved, AMS 11, formal_proof using formal_conjectures at "https://github.com/mzhorvath1/formal-conjectures/blob/032848c62fdf4c422bb0ee6663dc8d009d456c2c/FormalConjectures/ErdosProblems/233.lean#L57"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/233/Variantd828043093c7eb641f236f4a6967e0b84f76fdaa15d0506a976fbb00bf58420f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/233/Variantd828043093c7eb641f236f4a6967e0b84f76fdaa15d0506a976fbb00bf58420f.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07f7982b65569fe8b456c151d42172af6b9786c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
