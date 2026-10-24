# nat_add_two_le_two_pow_of_two_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c253440-ba0a-fed6-a114-1a857d16d514",
  "kind": "theorem",
  "lexical_name": "nat_add_two_le_two_pow_of_two_le",
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
  "slug": "nat-add-two-le-two-pow-of-two-le--93111d7236a5b5bc3b882db1",
  "source": {
    "blob": "5d3626a03c6979a18430215d285f4405e6f98eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93111d7236a5b5bc3b882db18825df5546ddbe7192ddfae618af6bb56788a597",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c253440-ba0a-fed6-a114-1a857d16d514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_add_two_le_two_pow_of_two_le
    {j : ℕ} (hj : 2 ≤ j) :
    j + 2 ≤ 2 ^ j := by
  induction j with
  | zero => omega
  | succ j ih =>
      by_cases hj' : 2 ≤ j
      · have hih := ih hj'
        rw [Nat.pow_succ]
        omega
      · have hj1 : j = 1 := by omega
        subst j
        norm_num

/-- The terminal-short deep set has only logarithmically many depths.  The
constant two in the padding covers the two smallest dyadic scales and the
right-endpoint subtraction convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3626a03c6979a18430215d285f4405e6f98eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
