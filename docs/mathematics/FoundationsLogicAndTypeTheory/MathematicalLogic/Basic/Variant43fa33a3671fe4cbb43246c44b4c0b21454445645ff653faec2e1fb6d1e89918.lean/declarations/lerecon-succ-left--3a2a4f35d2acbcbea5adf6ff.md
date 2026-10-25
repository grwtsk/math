# leRecOn_succ_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce63f697-15f4-efb0-2d08-370c2c347c4a",
  "kind": "theorem",
  "lexical_name": "leRecOn_succ_left",
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
  "slug": "lerecon-succ-left--3a2a4f35d2acbcbea5adf6ff",
  "source": {
    "blob": "098ebfc22e883c6693f8a11bd08dca22b9a9302f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a2a4f35d2acbcbea5adf6ff8e75bf5207108c38fb2acb2b25f37a6796c6fa06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce63f697-15f4-efb0-2d08-370c2c347c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leRecOn_succ_left {C : ℕ → Sort u} {n m} (h1 : n ≤ m) (h2 : n + 1 ≤ m)
    {next : ∀ {k}, C k → C (k + 1)} (x : C n) :
    (leRecOn h2 next (next x) : C m) = (leRecOn h1 next x : C m) := by
  rw [Subsingleton.elim h1 (le_trans (le_succ n) h2), leRecOn_trans (le_succ n) h2, leRecOn_succ']
#align nat.le_rec_on_succ_left Nat.leRecOn_succ_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `098ebfc22e883c6693f8a11bd08dca22b9a9302f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
