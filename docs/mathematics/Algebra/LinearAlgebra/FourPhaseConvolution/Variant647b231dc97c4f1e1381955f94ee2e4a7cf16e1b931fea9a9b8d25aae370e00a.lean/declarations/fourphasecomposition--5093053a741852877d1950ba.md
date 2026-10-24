# FourPhaseComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:020211af6637d9629f6c4a25cb9ca3a3cde2db21ec9341bfc5082a35975c20a0",
  "kind": "structure",
  "lexical_name": "FourPhaseComposition",
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
  "slug": "fourphasecomposition--5093053a741852877d1950ba",
  "source": {
    "blob": "fc185e837776a7e01e87c26dc0eba94b301d77db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5093053a741852877d1950ba1dc8f5a416dfff42b107f96d0be872fdc0996b25",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:020211af6637d9629f6c4a25cb9ca3a3cde2db21ec9341bfc5082a35975c20a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FourPhaseComposition (P : Type u) (U : Type v) (X : Type w)
    [AddCommGroup P] [Module ℝ P]
    [AddCommGroup U] [Module ℝ U]
    [AddCommGroup X] [Module ℝ X] where
  /-- Comparator-free phases I--III. -/
  core : ThreePhaseCore P U X
  /-- Phase-IV comparator. -/
  comparator : LinearComparator U
  /-- Phase-IV quantitative comparator regime. -/
  marginRegime :
    core.phaseIII.ComparatorMarginRegime comparator core.intervention

namespace FourPhaseComposition

variable (F : FourPhaseComposition P U X)

/-- Phase-IV comparator gap Gamma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc185e837776a7e01e87c26dc0eba94b301d77db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
