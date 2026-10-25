# dvd_emod_add_of_dvd_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15f49a11fe4fadfbd74f08060ae8ac163ae44303",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:060f27d3-6a29-5761-b95c-2ea964623c55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c7acb98-fa8d-28a6-818b-315b836ad093",
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
  "slug": "dvd-emod-add-of-dvd-add--a638ef8eb1583fd68b44fd52",
  "source": {
    "blob": "15f49a11fe4fadfbd74f08060ae8ac163ae44303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a638ef8eb1583fd68b44fd525c96d5edb1c0f22adf57d250e2fdea81ff34bee6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c7acb98-fa8d-28a6-818b-315b836ad093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–93.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant6a40c0ca9f7c887edf21110c56696d5277db94973c428a276bb118b624cfb2fa.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15f49a11fe4fadfbd74f08060ae8ac163ae44303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
