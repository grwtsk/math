# foobar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ce02a962279b1970325e58d8e0c8fda25381b0500be8ac9b1dafcd2c10f684a",
  "kind": "def",
  "lexical_name": "foobar",
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
  "slug": "foobar--a279b866bbe3c3ec94504fa2",
  "source": {
    "blob": "b7367dcec1aec2aa0b04232682997104541e39af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a279b866bbe3c3ec94504fa2931e9a23094e8c1447e0b6b766900869b5cd87a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ce02a962279b1970325e58d8e0c8fda25381b0500be8ac9b1dafcd2c10f684a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foobar (p : α → Prop) (f : Prop) := ∀ x, p x = f

notation3 "∀ᶠᶠ " (...) " in " f ": "
  r1:(scoped p => Filter.eventually p f) ", " r2:(scoped p => foobar p r1) => r2

/-- info: ∀ᶠᶠ (x : ℕ) (y : ℕ) in Filter.atTop: x < y, x = y : Prop -/
#guard_msgs in #check ∀ᶠᶠ (x : Nat) (y) in Filter.atTop: x < y, x = y
/-- info: ∀ᶠᶠ (x : ℕ) in Filter.atTop: x < 3, x = 1 : Prop -/
#guard_msgs in #check ∀ᶠᶠ x in Filter.atTop: x < 3, x = 1
/-- info: ∀ᶠᶠ (x : ℕ) in Filter.atTop: x < 3, x = 1 : Prop -/
#guard_msgs in #check foobar (fun x ↦ Eq x 1) (Filter.atTop.eventually fun x ↦ LT.lt x 3)
/-- info: foobar (fun y ↦ y = 1) (∀ᶠ (x : ℕ) in Filter.atTop, x < 3) : Prop -/
#guard_msgs in #check foobar (fun y ↦ Eq y 1) (Filter.atTop.eventually fun x ↦ LT.lt x 3)

notation3 "∃' " (...) ", " r:(scoped p => Exists p) => r
/-- info: ∃' (a : ℕ) (_ : a < 3), a < 3 : Prop -/
#guard_msgs in #check ∃' a < 3, a < 3
/-- info: ∃' (x : ℕ) (_ : x < 3), True : Prop -/
#guard_msgs in #check ∃' _ < 3, True
/-- info: ∃' (x : ℕ) (_ : x < 1) (x_1 : ℕ) (_ : x_1 < 2), x = 0 : Prop -/
#guard_msgs in #check ∃' (x < 1) (_ < 2), x = 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Notation3/Variantadbb3b9ce6f71dcad4e04807b2dede4a80a4da7ecaff9b3b77bd0cbf1a3ff9ca.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7367dcec1aec2aa0b04232682997104541e39af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
