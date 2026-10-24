# add_le_mul_of_left_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7980909c-aca3-dc8f-fdbc-6a3b07fb3268",
  "kind": "theorem",
  "lexical_name": "add_le_mul_of_left_le_right",
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
  "slug": "add-le-mul-of-left-le-right--dd144ed7d3e7fa8fcdabc8ca",
  "source": {
    "blob": "6aba11020115a29c5dad3ad2efc52ef61e53b327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 380,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant36eadeb599472073a18daf435afd5d472ca35e2800d57b577747541d60e3fd59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd144ed7d3e7fa8fcdabc8ca0dc41e078b3d84ff95cbc59aea7432b2b99af608",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant36eadeb599472073a18daf435afd5d472ca35e2800d57b577747541d60e3fd59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7980909c-aca3-dc8f-fdbc-6a3b07fb3268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_le_mul_of_left_le_right [ZeroLEOneClass R] [NeZero (1 : R)]
    [MulPosStrictMono R] [AddLeftMono R]
    (a2 : 2 ≤ a) (ab : a ≤ b) : a + b ≤ a * b :=
  have : 0 < b :=
    calc
      0 < 2 := zero_lt_two
      _ ≤ a := a2
      _ ≤ b := ab
  calc
    a + b ≤ b + b := by gcongr
    _ = 2 * b := (two_mul b).symm
    _ ≤ a * b := (mul_le_mul_iff_left₀ this).mpr a2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant36eadeb599472073a18daf435afd5d472ca35e2800d57b577747541d60e3fd59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant36eadeb599472073a18daf435afd5d472ca35e2800d57b577747541d60e3fd59.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aba11020115a29c5dad3ad2efc52ef61e53b327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
