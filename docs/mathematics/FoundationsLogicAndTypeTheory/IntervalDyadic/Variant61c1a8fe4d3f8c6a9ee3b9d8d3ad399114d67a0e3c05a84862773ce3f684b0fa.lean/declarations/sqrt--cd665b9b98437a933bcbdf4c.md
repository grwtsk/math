# sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6194fc30bbeaa6467e16be04d23c430f8e373c5b1a99d36418f45534e57d93b",
  "kind": "def",
  "lexical_name": "sqrt",
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
  "slug": "sqrt--cd665b9b98437a933bcbdf4c",
  "source": {
    "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 475,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd665b9b98437a933bcbdf4c2fe5aee1dc5d17580140e9db6e61095d82d633a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6194fc30bbeaa6467e16be04d23c430f8e373c5b1a99d36418f45534e57d93b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sqrt (I : IntervalDyadic) (_prec : Int := -53) : IntervalDyadic :=
  -- Conservative bound: [0, max(hi, 1)]
  -- sqrt(x) ≥ 0 for all x (including negative where sqrt returns 0)
  -- sqrt(x) ≤ max(x, 1) for x ≥ 0
  -- sqrt(x) = 0 ≤ max(hi, 1) for x < 0
  let one := Dyadic.ofInt 1
  let hi_bound := Dyadic.max I.hi one
  ⟨Dyadic.zero, hi_bound, by
    have hz : Dyadic.zero.toRat = 0 := Dyadic.toRat_zero
    rw [Dyadic.max_toRat, Dyadic.toRat_ofInt, hz]
    exact le_max_of_le_right (by norm_num : (0 : ℚ) ≤ 1)⟩

/-- sqrt(x) ≤ max(x, 1) for all x ≥ 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b77f3102dc0f912b0389995fefcaf7161365b344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
