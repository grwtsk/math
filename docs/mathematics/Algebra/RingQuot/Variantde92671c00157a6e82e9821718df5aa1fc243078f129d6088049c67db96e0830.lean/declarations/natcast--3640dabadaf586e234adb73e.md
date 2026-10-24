# natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3cb11283d20722b9122b41e95b9f74af346fd085900caa7812d23fc3fce3da2",
  "kind": "def",
  "lexical_name": "natCast",
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
  "slug": "natcast--3640dabadaf586e234adb73e",
  "source": {
    "blob": "56fdf476b4b90f00ae150f20a1e526a7eb20cf9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 169,
    "path": "GRWTSK/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3640dabadaf586e234adb73e4d9b2ddadc4ce3f52d1f741078de805fe78cb0c3",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3cb11283d20722b9122b41e95b9f74af346fd085900caa7812d23fc3fce3da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def natCast (n : ℕ) : RingQuot r :=
  ⟨Quot.mk _ n⟩

private irreducible_def zero : RingQuot r :=
  ⟨Quot.mk _ 0⟩

private irreducible_def one : RingQuot r :=
  ⟨Quot.mk _ 1⟩

private irreducible_def add : RingQuot r → RingQuot r → RingQuot r
  | ⟨a⟩, ⟨b⟩ => ⟨Quot.map₂ (· + ·) Rel.add_right Rel.add_left a b⟩

private irreducible_def mul : RingQuot r → RingQuot r → RingQuot r
  | ⟨a⟩, ⟨b⟩ => ⟨Quot.map₂ (· * ·) Rel.mul_right Rel.mul_left a b⟩

private irreducible_def neg {R : Type uR} [Ring R] (r : R → R → Prop) : RingQuot r → RingQuot r
  | ⟨a⟩ => ⟨Quot.map (fun a ↦ -a) Rel.neg a⟩

private irreducible_def sub {R : Type uR} [Ring R] (r : R → R → Prop) :
  RingQuot r → RingQuot r → RingQuot r
  | ⟨a⟩, ⟨b⟩ => ⟨Quot.map₂ Sub.sub Rel.sub_right Rel.sub_left a b⟩

private irreducible_def npow (n : ℕ) : RingQuot r → RingQuot r
  | ⟨a⟩ =>
    ⟨Quot.lift (fun a ↦ Quot.mk (RingQuot.Rel r) (a ^ n))
        (fun a b (h : Rel r a b) ↦ by
          -- note we can't define a `Rel.pow` as `Rel` isn't reflexive so `Rel r 1 1` isn't true
          dsimp only
          induction n with
          | zero => rw [pow_zero, pow_zero]
          | succ n ih =>
            rw [pow_succ, pow_succ]
            -- Porting note:
            -- `simpa [mul_def] using congr_arg₂ (fun x y ↦ mul r ⟨x⟩ ⟨y⟩) (Quot.sound h) ih`
            -- mysteriously doesn't work
            have := congr_arg₂ (fun x y ↦ mul r ⟨x⟩ ⟨y⟩) (Quot.sound h) ih
            dsimp only at this
            simp [mul_def] at this
            exact this)
        a⟩

-- note: this cannot be irreducible, as otherwise diamonds don't commute.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56fdf476b4b90f00ae150f20a1e526a7eb20cf9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
