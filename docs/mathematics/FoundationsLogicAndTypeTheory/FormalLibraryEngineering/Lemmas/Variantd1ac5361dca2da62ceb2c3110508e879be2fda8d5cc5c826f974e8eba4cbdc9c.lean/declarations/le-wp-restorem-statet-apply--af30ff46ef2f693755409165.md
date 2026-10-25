# le_wp_restoreM_StateT_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0109597f-f404-8afa-42d7-5ce47635b63e",
  "kind": "theorem",
  "lexical_name": "le_wp_restoreM_StateT_apply",
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
  "slug": "le-wp-restorem-statet-apply--af30ff46ef2f693755409165",
  "source": {
    "blob": "6b855b699ed1b2436dcd8f84154487b8b56fbe29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 423,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd1ac5361dca2da62ceb2c3110508e879be2fda8d5cc5c826f974e8eba4cbdc9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af30ff46ef2f693755409165793105de84863f52561d2a86f870851b89871707",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd1ac5361dca2da62ceb2c3110508e879be2fda8d5cc5c826f974e8eba4cbdc9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0109597f-f404-8afa-42d7-5ce47635b63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_wp_restoreM_StateT_apply (x : m (α × σ)) :
    (fun _ => wp x (fun (a, s) => post a s) epost) ⊑
      wp (MonadControl.restoreM (m:=m) x : StateT σ m α) post epost := by
  simp only [MonadControl.restoreM]
  apply PartialOrder.rel_trans; rotate_left; apply WPMonad.bind_le_wp_bind; simp only [liftM, monadLift]
  apply PartialOrder.rel_trans; rotate_left; apply le_wp_monadLift_StateT_apply
  intro s; apply WP.wp_consequence (x := x); intro s'; simp only
  apply PartialOrder.rel_trans; rotate_left; apply WPMonad.bind_le_wp_bind
  simp [set, StateT.set, pure, StateT.pure]
  apply PartialOrder.rel_trans
  · simpa using
      (WPMonad.pure_le_wp_pure (m := m) (x := (s'.fst, s'.snd))
        (post := fun x => post x.fst x.snd) (epost := epost))
  · simpa using
      (WPMonad.pure_le_wp_pure (m := m) (x := (PUnit.unit, s'.snd))
        (post := fun (x : PUnit × σ) => wp (pure (s'.fst, x.snd)) (fun (x : α × σ) => post x.fst x.snd) epost)
        (epost := epost))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd1ac5361dca2da62ceb2c3110508e879be2fda8d5cc5c826f974e8eba4cbdc9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd1ac5361dca2da62ceb2c3110508e879be2fda8d5cc5c826f974e8eba4cbdc9c.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b855b699ed1b2436dcd8f84154487b8b56fbe29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
