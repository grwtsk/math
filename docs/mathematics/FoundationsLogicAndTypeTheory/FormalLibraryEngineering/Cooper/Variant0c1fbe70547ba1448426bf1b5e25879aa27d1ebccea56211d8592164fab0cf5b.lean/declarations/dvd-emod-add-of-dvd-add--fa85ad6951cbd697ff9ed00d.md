# dvd_emod_add_of_dvd_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1cd78ba-5290-33b5-5a59-e9253e582321",
  "kind": "theorem",
  "lexical_name": "dvd_emod_add_of_dvd_add",
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
  "slug": "dvd-emod-add-of-dvd-add--fa85ad6951cbd697ff9ed00d",
  "source": {
    "blob": "c4e7389993380fb217d9d5c2936b86c8ea6f7d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa85ad6951cbd697ff9ed00d3615435a20d52472a8d0cadd2b2ee79caa4007b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1cd78ba-5290-33b5-5a59-e9253e582321`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem dvd_emod_add_of_dvd_add {a c d x : Int} (w : a ∣ x + c) (h : a ∣ d) : a ∣ (x % d) + c := by
  rw [← Int.one_mul x] at w
  rw [← Int.one_mul (x % d)]
  apply dvd_mul_emod_add_of_dvd_mul_add w (by simpa)

/-!
There is an integer solution for `x` to the system
```
p ≤ a * x
    b * x ≤ q
d | c * x + s
```
(here `a`, `b`, `d` are positive integers, `c` and `s` are integers,
and `p` and `q` are integers which it may be helpful to think of as evaluations of linear forms),
if and only if there is an integer solution for `k` to the system
```
0 ≤ k < lcm a (a * d / gcd (a * d) c)
b * k + b * p ≤ a * q
    a | k + p
a * d | c * k + c * p + a * s
```
Note in the new system that `k` has explicit lower and upper bounds
(i.e. without a coefficient for `k`, and in terms of `a`, `c`, and `d` only).

This is a statement of "Cooper resolution" with a divisibility constraint,
as formulated in
"Cutting to the Chase: Solving Linear Integer Arithmetic" by Dejan Jovanović and Leonardo de Moura,
DOI 10.1007/s10817-013-9281-x

See `cooper_resolution_left` for a simpler version without the divisibility constraint.

This formulation is "biased" towards the lower bound, so it is called "left Cooper resolution".
See `cooper_resolution_dvd_right` for the version biased towards the upper bound.
-/

namespace Cooper

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e7389993380fb217d9d5c2936b86c8ea6f7d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
