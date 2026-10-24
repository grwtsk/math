# mapFinIdxM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:798d5739a711c4254fec08aef5602e8733ed6ad5a326aa83594192e37d3053f8",
  "kind": "def",
  "lexical_name": "mapFinIdxM",
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
  "slug": "mapfinidxm--932a9276bf7ec8ca774bf08a",
  "source": {
    "blob": "a58ae05876cec668e0413124b4338e74a109dcf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 277,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2b5e00d72b2cc1db9b2aece6254c114b3ca6107d03db2e67dff08fd04f20aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:932a9276bf7ec8ca774bf08aab452070822737740b291e18963d2863afe043aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2b5e00d72b2cc1db9b2aece6254c114b3ca6107d03db2e67dff08fd04f20aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:798d5739a711c4254fec08aef5602e8733ed6ad5a326aa83594192e37d3053f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapFinIdxM {α : Type u} {β : Type v} {m : Type v → Type w} [Monad m]
    (xs : Vector α n) (f : (i : Nat) → α → (h : i < n) → m β) : m (Vector β n) :=
  let rec @[specialize] map (i : Nat) (j : Nat) (inv : i + j = n) (ys : Vector β (n - i)) : m (Vector β n) := do
    match i, inv with
    | 0,   inv => return ys.cast (by omega)
    | i+1, inv =>
      have j_lt : j < n := by
        rw [← inv, Nat.add_assoc, Nat.add_comm 1 j, Nat.add_comm]
        apply Nat.le_add_right
      have : i + (j + 1) = n := by rw [← inv, Nat.add_comm j 1, Nat.add_assoc]
      map i (j+1) this ((ys.push (← f j xs[j] j_lt)).cast (by omega))
  map n 0 rfl (#v[].cast (by simp))

@[inline, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2b5e00d72b2cc1db9b2aece6254c114b3ca6107d03db2e67dff08fd04f20aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd2b5e00d72b2cc1db9b2aece6254c114b3ca6107d03db2e67dff08fd04f20aa3.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58ae05876cec668e0413124b4338e74a109dcf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
