# sigmaFinite_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa59fa4afcbb718f211afd89fe7317beccb6f99adabb0ba1a93b52c0082665ad",
  "kind": "instance",
  "lexical_name": "sigmaFinite_restrict",
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
  "slug": "sigmafinite-restrict--db297714d182d7a14e3b2620",
  "source": {
    "blob": "de4a7ba29e4822bdf7b0382d1956a2813d5fd65a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 897,
    "path": "GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variante81a22cf5975afc3dfcaa99a408daa412ffd45ecd50cf4eacab6a773c7b8fe6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db297714d182d7a14e3b262027e0aefa8c571ab884cd34a112f299cd9b201c78",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variante81a22cf5975afc3dfcaa99a408daa412ffd45ecd50cf4eacab6a773c7b8fe6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa59fa4afcbb718f211afd89fe7317beccb6f99adabb0ba1a93b52c0082665ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sigmaFinite_restrict (hf : AEFinStronglyMeasurable f μ) :
    SigmaFinite (μ.restrict hf.sigmaFiniteSet) :=
  hf.exists_set_sigmaFinite.choose_spec.2.2

end AEFinStronglyMeasurable

section SecondCountableTopology

variable {G : Type*} [SeminormedAddCommGroup G] [MeasurableSpace G] [BorelSpace G]
  [SecondCountableTopology G] {f : α → G}

/-- In a space with second countable topology and a sigma-finite measure,
  `AEFinStronglyMeasurable` and `AEMeasurable` are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variante81a22cf5975afc3dfcaa99a408daa412ffd45ecd50cf4eacab6a773c7b8fe6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variante81a22cf5975afc3dfcaa99a408daa412ffd45ecd50cf4eacab6a773c7b8fe6c.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4a7ba29e4822bdf7b0382d1956a2813d5fd65a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
