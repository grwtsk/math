# ResidueDeflectionCut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5080de50dd6ad27881d2b24f3359c40245be5e39868f5c2b96f7bd443687b9a4",
  "kind": "structure",
  "lexical_name": "ResidueDeflectionCut",
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
  "slug": "residuedeflectioncut--5d3db20f1bacb4f8a622273b",
  "source": {
    "blob": "54acb16564318a0f1025cf1aff65dc2a16ba5c1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Graph/Variant72bae5c5cc610cb7677cdc6d0fcdb5962b2e806fcc24dba3f433e59007d6dd68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d3db20f1bacb4f8a622273b56ec610cc723d825cae49fbfb19fa12123110ab2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Graph/Variant72bae5c5cc610cb7677cdc6d0fcdb5962b2e806fcc24dba3f433e59007d6dd68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5080de50dd6ad27881d2b24f3359c40245be5e39868f5c2b96f7bd443687b9a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResidueDeflectionCut
    (graph : GraphCut) where
  residue : graph.Node → Residue3
  defectNode : graph.Node → Bool
  defect_iff_zero :
    ∀ node,
      defectNode node = true ↔
        residue node = .zero
  safeArc : Arc graph → Bool
  safeArc_endpoints :
    ∀ arc,
      safeArc arc = true →
        (residue arc.tail).Safe ∧
          (residue arc.head).Safe
  admissibility : AdmissibilityProfile graph
  admitted_node_iff_safe :
    ∀ node,
      NodeAdmissible admissibility node ↔
        (residue node).Safe
  admitted_arc_iff_safe :
    ∀ arc,
      ArcAdmissible admissibility arc ↔
        safeArc arc = true
  Bypass : Type
  bypassFintype : Fintype Bypass
  bypassDecEq : DecidableEq Bypass
  bypassDefect : Bypass → graph.Node
  bypassLeft : Bypass → graph.Node
  bypassRight : Bypass → graph.Node
  bypassPath :
    ∀ bypass,
      DeflectionPath graph
        (bypassLeft bypass)
        (bypassRight bypass)
  bypass_safe :
    ∀ bypass,
      (bypassPath bypass).AllArcs
        (fun arc => safeArc arc = true)
  bypass_complete :
    ∀ node,
      defectNode node = true →
        ∃ bypass,
          bypassDefect bypass = node
  loopBase : Bypass → graph.Node
  defectLoop :
    ∀ bypass,
      DeflectionPath graph
        (loopBase bypass)
        (loopBase bypass)
  defectLoop_safe :
    ∀ bypass,
      (defectLoop bypass).AllArcs
        (fun arc => safeArc arc = true)
  loopBase_safe :
    ∀ bypass,
      (residue (loopBase bypass)).Safe

attribute [instance]
  ResidueDeflectionCut.bypassFintype
  ResidueDeflectionCut.bypassDecEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Graph/Variant72bae5c5cc610cb7677cdc6d0fcdb5962b2e806fcc24dba3f433e59007d6dd68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Graph/Variant72bae5c5cc610cb7677cdc6d0fcdb5962b2e806fcc24dba3f433e59007d6dd68.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54acb16564318a0f1025cf1aff65dc2a16ba5c1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
