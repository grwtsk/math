# HasSum.smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5734dc4-6905-a2ec-3fbd-b46410e07de0",
  "kind": "theorem",
  "lexical_name": "HasSum.smul_eq",
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
  "slug": "hassum-smul-eq--919f4febad43f80e191459dd",
  "source": {
    "blob": "343ee70589c17a456ad74982b9106ae83dc12b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 102,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:919f4febad43f80e191459dd4dae50b24a4b5453279b6c0bb9d729ca4f414ec6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5734dc4-6905-a2ec-3fbd-b46410e07de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasSum.smul_eq (hf : HasSum f s) (hg : HasSum g t)
    (hfg : HasSum (fun x : ι × κ ↦ f x.1 • g x.2) u) : s • t = u :=
  have key₁ : HasSum (fun i ↦ f i • t) (s • t) := hf.smul_const t
  have this : ∀ i : ι, HasSum (fun c : κ ↦ f i • g c) (f i • t) := fun i ↦ hg.const_smul (f i)
  have key₂ : HasSum (fun i ↦ f i • t) u := HasSum.prod_fiberwise hfg this
  key₁.unique key₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `343ee70589c17a456ad74982b9106ae83dc12b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
