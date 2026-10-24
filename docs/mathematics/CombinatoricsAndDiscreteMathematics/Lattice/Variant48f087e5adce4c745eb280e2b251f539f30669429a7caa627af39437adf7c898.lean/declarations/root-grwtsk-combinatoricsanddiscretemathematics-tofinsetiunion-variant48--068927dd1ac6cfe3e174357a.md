# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ToFinsetIUnion.Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.iInf_iSup_eq_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21d52b08-5fd6-7ab9-cf5a-68e90c9a8017",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ToFinsetIUnion.Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.iInf_iSup_eq_of_finite",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-tofinsetiunion-variant48--068927dd1ac6cfe3e174357a",
  "source": {
    "blob": "e9ff8ed57e702c7db85d717532a24af91644d78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 376,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:068927dd1ac6cfe3e174357ab8811bedf2e9dad20c2c44cfc4834a8c156ee3a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21d52b08-5fd6-7ab9-cf5a-68e90c9a8017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.ToFinsetIUnion.Variant488957f635426291d2dc7bdceec7f7b69156e79261463bde40530273a62d8099.iInf_iSup_eq_of_finite {ι : Sort v} {κ : ι → Sort w} [Order.Frame α] [Finite ι]
    {f : Π a, κ a → α} : ⨅ a, ⨆ b, f a b = ⨆ g : (Π a, κ a), ⨅ a, f a (g a) := by
  suffices ∀ {ι : Type v} {κ : ι → Type w} [Finite ι] (f : Π a, κ a → α),
      ⨅ a, ⨆ b, f a b = ⨆ g : (Π a, κ a), ⨅ a, f a (g a) by
    simpa [← Equiv.plift.symm.iInf_comp, ← Equiv.plift.symm.iSup_comp,
        ← (Equiv.plift.piCongr fun a => @Equiv.plift (κ a.down)).symm.iSup_comp] using!
      this (κ := fun a => PLift (κ a.down)) fun (a : PLift ι) b => f a.down b.down
  intro ι κ _ f
  induction ι using Finite.induction_empty_option with
  | of_equiv e h => simp [← e.iInf_comp, ← e.piCongrLeft κ |>.iSup_comp, h]
  | h_empty => simp [iSup_const]
  | h_option h =>
    simp only [iInf_option, h, ← (Equiv.piOptionEquivProd (β := κ)).symm.iSup_comp,
      Equiv.piOptionEquivProd_symm_apply, iSup_prod, ← inf_iSup_eq, ← iSup_inf_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant48f087e5adce4c745eb280e2b251f539f30669429a7caa627af39437adf7c898.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ff8ed57e702c7db85d717532a24af91644d78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
