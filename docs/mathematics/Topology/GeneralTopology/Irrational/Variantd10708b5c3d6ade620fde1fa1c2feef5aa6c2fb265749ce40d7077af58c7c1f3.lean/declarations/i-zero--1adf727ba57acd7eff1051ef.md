# I_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0027bf8-ce31-22c9-a826-b082b860e9d8",
  "kind": "lemma",
  "lexical_name": "I_zero",
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
  "slug": "i-zero--1adf727ba57acd7eff1051ef",
  "source": {
    "blob": "9d7d8baccdf48fb42ed8437f2c63a4c8776bbb5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/Irrational/Variantd10708b5c3d6ade620fde1fa1c2feef5aa6c2fb265749ce40d7077af58c7c1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1adf727ba57acd7eff1051efd17bc190d18ff2dde994635523284a6163b4ada7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irrational/Variantd10708b5c3d6ade620fde1fa1c2feef5aa6c2fb265749ce40d7077af58c7c1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0027bf8-ce31-22c9-a826-b082b860e9d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma I_zero : I 0 θ * θ = 2 * sin θ := by
  rw [mul_comm, I]
  simp [mul_integral_comp_mul_right, two_mul]

/--
Auxiliary for the proof that `π` is irrational.
While it is most natural to give the recursive formula for `I (n + 2) θ`, as well as give the second
base case of `I 1 θ`, it is in fact more convenient to give the recursive formula for `I (n + 1) θ`
in terms of `I n θ` and `I (n - 1) θ` (note the natural subtraction!).
Despite the usually inconvenient subtraction, this in fact allows deducing both of the above facts
with significantly fewer analysis computations.
In addition, note the `0 ^ n` on the right-hand side - this is intentional, and again allows
combining the proof of the "usual" recursion formula and the base case `I 1 θ`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irrational/Variantd10708b5c3d6ade620fde1fa1c2feef5aa6c2fb265749ce40d7077af58c7c1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irrational/Variantd10708b5c3d6ade620fde1fa1c2feef5aa6c2fb265749ce40d7077af58c7c1f3.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7d8baccdf48fb42ed8437f2c63a4c8776bbb5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
