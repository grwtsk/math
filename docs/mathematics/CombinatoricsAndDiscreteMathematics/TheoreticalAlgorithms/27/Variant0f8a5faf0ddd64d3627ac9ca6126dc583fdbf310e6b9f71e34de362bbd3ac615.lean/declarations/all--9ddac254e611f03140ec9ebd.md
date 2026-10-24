# All

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3205d5d8badc74bcc041eee5a823e6af71498b0db464334b9f155b5ae455b8f",
  "kind": "inductive",
  "lexical_name": "All",
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
  "slug": "all--9ddac254e611f03140ec9ebd",
  "source": {
    "blob": "d1b2e5f18c2976994ba6c18ed10a6cd0b485ae13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/27/Variant0f8a5faf0ddd64d3627ac9ca6126dc583fdbf310e6b9f71e34de362bbd3ac615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ddac254e611f03140ec9ebdf2182db6e44b9f19e9b1ac3172aee46e956b7470",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/27/Variant0f8a5faf0ddd64d3627ac9ca6126dc583fdbf310e6b9f71e34de362bbd3ac615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3205d5d8badc74bcc041eee5a823e6af71498b0db464334b9f155b5ae455b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive All (P : α → Prop) : List α → Prop
  | nil : All P []
  | cons {x xs} : P x → All P xs → All P (x :: xs)

/--
trace: [aesop.proof] Final proof:
      casesOn (P := P) (motive := fun a x_1 => x :: xs = a → h ≍ x_1 → P x ∧ All P xs) h
        (fun h_1 => False.elim (noConfusion_of_Nat List.ctorIdx h_1))
        (fun {x_1} {xs_1} a a_1 h_1 =>
          List.cons.noConfusion h_1 fun head_eq =>
            Eq.ndrec (motive := fun {x_1} => ∀ (a : P x_1), xs ≍ xs_1 → h ≍ cons (P := P) a a_1 → P x ∧ All P xs)
              (fun a tail_eq =>
                Eq.ndrec (motive := fun {xs_1} => ∀ (a_1 : All P xs_1), h ≍ cons (P := P) a a_1 → P x ∧ All P xs)
                  (fun a_1 h => of_eq_true (Eq.trans (congr (congrArg And (eq_true a)) (eq_true a_1)) (and_self True)))
                  (eq_of_heq tail_eq) a_1)
              (eq_of_heq head_eq) a)
        (Eq.refl (x :: xs)) (HEq.refl h)
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/27/Variant0f8a5faf0ddd64d3627ac9ca6126dc583fdbf310e6b9f71e34de362bbd3ac615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/27/Variant0f8a5faf0ddd64d3627ac9ca6126dc583fdbf310e6b9f71e34de362bbd3ac615.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b2e5f18c2976994ba6c18ed10a6cd0b485ae13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
