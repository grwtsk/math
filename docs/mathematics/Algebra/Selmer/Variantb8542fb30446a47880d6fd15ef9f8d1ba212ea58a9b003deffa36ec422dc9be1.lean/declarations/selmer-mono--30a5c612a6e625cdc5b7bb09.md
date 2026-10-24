# selmer_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:774aab41-6273-43f2-032d-9c54db00b9e2",
  "kind": "theorem",
  "lexical_name": "selmer_mono",
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
  "slug": "selmer-mono--30a5c612a6e625cdc5b7bb09",
  "source": {
    "blob": "052c9569ce763491180df62998d5d01018a015cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 162,
    "path": "GRWTSK/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30a5c612a6e625cdc5b7bb092f1c849d41a6c5c2d69f66395b8990a6fc4683d6",
  "verification": {
    "reference": "docs/verification/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:774aab41-6273-43f2-032d-9c54db00b9e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selmer_mono
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρG : AdditiveAction G A}
    {V : Type w}
    {Gv : V → FiniteGroupData.{u}}
    {ρv : (v : V) → AdditiveAction (Gv v) A}
    {ιv : (v : V) → ActionHom (ρv v) ρG}
    {Lv Mv :
      (v : V) →
        FiniteSubgroup (FiniteH1.additiveStructure (Gv v) A (ρv v))}
    (hlocal :
      ∀ (v : V) (x : FiniteH1 (Gv v) A (ρv v)),
        (Lv v).carrier x → (Mv v).carrier x) :
    FiniteSubgroup.le
      (FiniteSelmerGroup
        (G := G)
        (A := A)
        (ρG := ρG)
        V Gv ρv ιv Lv)
      (FiniteSelmerGroup
        (G := G)
        (A := A)
        (ρG := ρG)
        V Gv ρv ιv Mv) := by
  intro c hc v
  exact hlocal v (resFiniteH1 (ιv v) c) (hc v)

/--
A bundled finite abstract Selmer problem.

This is constructed data: a global finite group action, a family of local finite
group actions, restriction maps, and local subgroups of local `FiniteH1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Selmer/Variantb8542fb30446a47880d6fd15ef9f8d1ba212ea58a9b003deffa36ec422dc9be1.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `052c9569ce763491180df62998d5d01018a015cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
