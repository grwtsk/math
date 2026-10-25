# betterApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adb40c2f4123bc4cedc883ef2a0e77bb093b5dbd4fc44f41fb03073aa9c5d033",
  "kind": "def",
  "lexical_name": "betterApp",
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
  "slug": "betterapp--d95c35f3a52ceb58e537ab5b",
  "source": {
    "blob": "afb8f267d3661cd6b376a0c38ed338407519d6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetterApp/Variant4c68dac46050a6397bb8cf24e417f225ab7f254ac7c4335862715e3c2201635b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d95c35f3a52ceb58e537ab5b131f3b05710d332f869103520af32fce5c64ac96",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetterApp/Variant4c68dac46050a6397bb8cf24e417f225ab7f254ac7c4335862715e3c2201635b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adb40c2f4123bc4cedc883ef2a0e77bb093b5dbd4fc44f41fb03073aa9c5d033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def betterApp {α : Q(Sort $u)} {β : Q($α → Sort $v)}
    (f : Q((a : $α) → $β a)) (a : Q($α)) : Q($β $a) :=
  q($f $a)

/--
info: (Lean.Expr.const `Int.toNat []).app
  ((((Lean.Expr.const `OfNat.ofNat [Lean.Level.zero]).app (Lean.Expr.const `Int [])).app
        (Lean.Expr.lit (Lean.Literal.natVal 42))).app
    ((Lean.Expr.const `instOfNat []).app (Lean.Expr.lit (Lean.Literal.natVal 42))))
-/
#guard_msgs in
#eval betterApp q(Int.toNat) q(42)
/--
info: betterApp q(fun a => ⟨a, ⋯⟩) q(42) : Q(Fin (42 + 1))
-/
#guard_msgs in
#check betterApp (β := q(fun n : Nat => Fin (n+1))) q(fun a => ⟨a, Nat.lt_succ_self _⟩) q(42)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetterApp/Variant4c68dac46050a6397bb8cf24e417f225ab7f254ac7c4335862715e3c2201635b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetterApp/Variant4c68dac46050a6397bb8cf24e417f225ab7f254ac7c4335862715e3c2201635b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb8f267d3661cd6b376a0c38ed338407519d6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
