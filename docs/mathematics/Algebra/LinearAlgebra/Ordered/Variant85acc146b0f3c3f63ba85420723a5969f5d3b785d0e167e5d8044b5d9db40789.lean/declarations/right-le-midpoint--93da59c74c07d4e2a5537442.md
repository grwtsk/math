# right_le_midpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0d19901-8d1a-979d-cd02-e03d7a051409",
  "kind": "theorem",
  "lexical_name": "right_le_midpoint",
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
  "slug": "right-le-midpoint--93da59c74c07d4e2a5537442",
  "source": {
    "blob": "25583bc201972a10df50d9c5476a5b8591b9a121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 173,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93da59c74c07d4e2a5537442fee83169abe8d74e006ff0ea25f5ae30502d4e8b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0d19901-8d1a-979d-cd02-e03d7a051409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem right_le_midpoint : b ≤ midpoint k a b ↔ b ≤ a :=
  right_le_lineMap_iff_le <| inv_lt_one one_lt_two
#align right_le_midpoint right_le_midpoint

end

/-!
### Convexity and slope

Given an interval `[a, b]` and a point `c ∈ (a, b)`, `c = lineMap a b r`, there are a few ways to
say that the point `(c, f c)` is above/below the segment `[(a, f a), (b, f b)]`:

* compare `f c` to `lineMap (f a) (f b) r`;
* compare `slope f a c` to `slope f a b`;
* compare `slope f c b` to `slope f a b`;
* compare `slope f a c` to `slope f c b`.

In this section we prove equivalence of these four approaches. In order to make the statements more
readable, we introduce local notation `c = lineMap a b r`. Then we prove lemmas like

```
lemma map_le_lineMap_iff_slope_le_slope_left (h : 0 < r * (b - a)) :
  f c ≤ lineMap (f a) (f b) r ↔ slope f a c ≤ slope f a b :=
```

For each inequality between `f c` and `lineMap (f a) (f b) r` we provide 3 lemmas:

* `*_left` relates it to an inequality on `slope f a c` and `slope f a b`;
* `*_right` relates it to an inequality on `slope f a b` and `slope f c b`;
* no-suffix version relates it to an inequality on `slope f a c` and `slope f c b`.

These inequalities can be used to restate `convexOn` in terms of monotonicity of the slope.
-/


variable {f : k → E} {a b r : k}

-- mathport name: exprc
local notation "c" => lineMap a b r

/-- Given `c = lineMap a b r`, `a < c`, the point `(c, f c)` is non-strictly below the
segment `[(a, f a), (b, f b)]` if and only if `slope f a c ≤ slope f a b`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25583bc201972a10df50d9c5476a5b8591b9a121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
