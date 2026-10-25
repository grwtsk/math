# StateM.of_wp_run'_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82defba4-72be-c231-0da8-cfa791af241d",
  "kind": "theorem",
  "lexical_name": "StateM.of_wp_run'_eq",
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
  "slug": "statem-of-wp-run-eq--654575672672d4ed6ad27f1c",
  "source": {
    "blob": "20366acd20427db38dd653495188cc6d529f18f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantcdfff649de4187ecc49e89862cc1a8ec4799a5251ae18edc6aa35fabac1384f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:654575672672d4ed6ad27f1ce350ad98b7791d37bd59cc63c65afbc6ce3d2ec6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantcdfff649de4187ecc49e89862cc1a8ec4799a5251ae18edc6aa35fabac1384f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82defba4-72be-c231-0da8-cfa791af241d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem StateM.of_wp_run'_eq {α σ : Type} {x : α} {s : σ} {prog : StateM σ α}
    (h : StateT.run' prog s = x) (P : α → Prop) :
    (⊢ₛ wp⟦prog⟧ (⇓ a => ⌜P a⌝) s) → P x := fun hwp => by
  have hwp' : ⊢ₛ wp⟦prog⟧ (⇓ a s' => ⌜(fun p : α × σ => P p.1) (a, s')⌝) s := hwp
  have := StateT.of_wp_run (m := _root_.Id) (prog := prog) (s := s) (p := StateT.run prog s)
    (fun p => P p.1) rfl hwp'
  exact h ▸ this

/--
A `wp`-provable postcondition with split `.ok`/`.error` cases refines the post-run computation
`prog.run : m (Except ε α)` via `Internal.Ensures`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantcdfff649de4187ecc49e89862cc1a8ec4799a5251ae18edc6aa35fabac1384f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantcdfff649de4187ecc49e89862cc1a8ec4799a5251ae18edc6aa35fabac1384f3.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20366acd20427db38dd653495188cc6d529f18f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
