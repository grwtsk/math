# mapSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39434701a00087b88d087b5b9008b581b0ca1553ad29e16a9f03ac31d80e5811",
  "kind": "def",
  "lexical_name": "mapSection",
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
  "slug": "mapsection--cab89308e86f4de7b0110b96",
  "source": {
    "blob": "82ebbad5093612f7505b5f07c99668c7ae5b5db1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 96,
    "path": "GRWTSK/Analysis/Operator/HolomorphicLinePort.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cab89308e86f4de7b0110b967b2cbb826816a3be89712f03f83228a9097b713c",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39434701a00087b88d087b5b9008b581b0ca1553ad29e16a9f03ac31d80e5811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapSection (A : CompatibleOperators C) (hOpen : D.IsOpenCover)
    (hA : A.PreservesHolomorphy) (s : BundleSection C hOpen) : BundleSection C hOpen where
  value x := A.descend hOpen x (s.value x)
  holomorphic := by
    intro i
    have heq : (fun z : (D.U i).carrier => chartCoordinate C hOpen
        (fun x => A.descend hOpen x (s.value x)) i ⟨z.1, D.subset i z.2⟩) =
        (fun z => A.localOp i z ((s.localize.sectionAt i : Section (D.U i)) z)) := by
      funext z
      exact A.coordinate_descend hOpen i ⟨z.1, D.subset i z.2⟩ z.2 _
    rw [heq]
    exact hA i (s.localize.sectionAt i)

/-- The lifted section is continuous in the actual total-space topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicLinePort.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ebbad5093612f7505b5f07c99668c7ae5b5db1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
