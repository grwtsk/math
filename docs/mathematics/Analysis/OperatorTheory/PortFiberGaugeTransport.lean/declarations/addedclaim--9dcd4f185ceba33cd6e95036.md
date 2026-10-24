# AddedClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f3d403c728e49cbddf15848ae3dc78477736cb6b541a47babf70a24eed8c54c",
  "kind": "def",
  "lexical_name": "AddedClaim",
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
  "slug": "addedclaim--9dcd4f185ceba33cd6e95036",
  "source": {
    "blob": "a42301b8476e0e9f013ef31f6bddba4a596f6c35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 34,
    "path": "GRWTSK/Interfaces/PortFiberGaugeTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dcd4f185ceba33cd6e950367a5e0e5627d6e8802b82a1e8fac16a402f9f0a07",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/PortFiberGaugeTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f3d403c728e49cbddf15848ae3dc78477736cb6b541a47babf70a24eed8c54c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddedClaim : AddedIndex → Prop
  | .inverseGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E),
        G.comp G.symm = Gauge.identity C ∧ G.symm.comp G = Gauge.identity E
  | .constructedFrameChange =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D)
        (h : ∀ i, (GRWTSK.Analysis.Complex.HolomorphicSectionRing.HolomorphicSection (D.U i))ˣ),
        Nonempty (Gauge C (Construction.changeFrames C h))
  | .totalSpaceTransport =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (hOpen : D.IsOpenCover),
        Continuous (G.totalMap hOpen) ∧ Continuous (G.symm.totalMap hOpen)
  | .sectionMapBinding =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (hOpen : D.IsOpenCover) (s : BundleSection C hOpen) (x : D.X.carrier),
        (G.bundleSectionEquiv hOpen s).value x = G.fiberMap hOpen x (s.value x)
  | .operatorConjugacy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (A : CompatibleOperators C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (a : (C.vectorBundleCore hOpen).Fiber x),
        (transport G A).descend hOpen x (G.fiberMap hOpen x a) =
          G.fiberMap hOpen x (A.descend hOpen x a)
  | .operatorHolomorphy =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (A : CompatibleOperators C),
        A.PreservesHolomorphy → (transport G A).PreservesHolomorphy
  | .sectionNaturality =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (A : CompatibleOperators C) (hOpen : D.IsOpenCover) (hA : A.PreservesHolomorphy)
        (s : BundleSection C hOpen),
        G.bundleSectionEquiv hOpen (A.mapSection hOpen hA s) =
          (transport G A).mapSection hOpen (transport_preservesHolomorphy G A hA)
            (G.bundleSectionEquiv hOpen s)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/PortFiberGaugeTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberGaugeTransport.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a42301b8476e0e9f013ef31f6bddba4a596f6c35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
