# findUniqueRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2ee0fb6edcf7e531f7b1b53b4e51d7a2dc909ad4bb54e40698af81aa74f9570",
  "kind": "def",
  "lexical_name": "findUniqueRoot",
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
  "slug": "finduniqueroot--83767a2481b42c3d7a79b842",
  "source": {
    "blob": "152a9c94ededf1c30de77d810668fcef69953a87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83767a2481b42c3d7a79b8428db1cb808cadcf5cbf7cef5bc01f5b8b1bd7d958",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2ee0fb6edcf7e531f7b1b53b4e51d7a2dc909ad4bb54e40698af81aa74f9570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def findUniqueRoot (e : Expr) (hsupp : ExprSupported e)
    (hvar0 : UsesOnlyVar0 e) (I : IntervalRat) (cfg : RootSearchConfig := {}) :
    Option (UniqueRootResult e I) :=
  let evalCfg : EvalConfig := { taylorDepth := cfg.taylorDepth }
  let newtonCfg : RootFinding.NewtonConfig := {}  -- Default Newton config
  let hdomValid := LeanCert.Meta.exprContinuousDomainValid_of_ExprSupported hsupp (s := Set.Icc I.lo I.hi)
  let hCont := LeanCert.Meta.exprSupportedCore_continuousOn e hsupp.toCore hdomValid
  -- Try Newton contraction check - need both core (for search) and non-core (for proof)
  if h_core : RootFinding.checkNewtonContractsCore e I evalCfg = true then
    if h_newton : RootFinding.checkNewtonContracts e I newtonCfg = true then
      let uniqueProof := RootFinding.verify_unique_root_core e hsupp hvar0 I
        evalCfg newtonCfg hCont h_core h_newton
      -- Extract the components from ExistsUnique
      some {
        supported := hsupp.toCore
        continuous := hCont
        hasRoot := by
          obtain ⟨x, ⟨hx_mem, hx_root⟩, _⟩ := uniqueProof
          exact ⟨x, hx_mem, hx_root⟩
        unique := by
          obtain ⟨_, _, huniq⟩ := uniqueProof
          intro x y hx hy hfx hfy
          have hxu := huniq x ⟨hx, hfx⟩
          have hyu := huniq y ⟨hy, hfy⟩
          rw [hxu, hyu]
      }
    else
      -- Non-core Newton check failed
      none
  else
    -- Core Newton contraction didn't work; could try other methods
    none

/-! ## Optimization API (0.1.2) -/

/-- Configuration for optimization search -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SearchAPI/Variantddce87f52485089bd7da98b8fe43a43ac0607577169c835f6291ae8e5426986e.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152a9c94ededf1c30de77d810668fcef69953a87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
