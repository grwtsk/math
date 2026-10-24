# admissionResidues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24a741d5fb6b5880578df5fb84679a74d779d847d072ed24f0eb1fc87e5588ae",
  "kind": "def",
  "lexical_name": "admissionResidues",
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
  "slug": "admissionresidues--45938461faa08d634803a67e",
  "source": {
    "blob": "c4121a7d9a7cd5a0c3e483ef6020b7477b42670e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralTripleToposBoundary/Variant239a4f9c26eef52f5cf53dd63b6187213f0ef7a26092243301b922d550a00578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45938461faa08d634803a67e05dd32607eb87b478d011279686389d8e9512cc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralTripleToposBoundary/Variant239a4f9c26eef52f5cf53dd63b6187213f0ef7a26092243301b922d550a00578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24a741d5fb6b5880578df5fb84679a74d779d847d072ed24f0eb1fc87e5588ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def admissionResidues
    (input : SpectralTripleInput) :
    List ToposInterfaceResidue :=
  (if input.spectralTriple.validatesCandidateGate &&
      input.spectralTriple.admittedSpectralTriple &&
      input.residueGate.locallyAdmitted &&
      input.rootedCoverGate &&
      input.nonOverlapGate &&
      input.toposDescentGate &&
      input.lineageGate then
    []
  else
    [ToposInterfaceResidue.spectral_triple_boundary_gates_failed]) ++
    (if strictlyOrderedTorsionClasses input.orderedTorsionData then
      []
    else
      [ToposInterfaceResidue.ordered_torsion_data_missing]) ++
    (if input.spectralLanguageAuthorityClaim then
      [ToposInterfaceResidue.arbitrary_spectral_language_refused]
    else
      []) ++
    [ToposInterfaceResidue.theorem_authority_not_claimed]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralTripleToposBoundary/Variant239a4f9c26eef52f5cf53dd63b6187213f0ef7a26092243301b922d550a00578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralTripleToposBoundary/Variant239a4f9c26eef52f5cf53dd63b6187213f0ef7a26092243301b922d550a00578.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4121a7d9a7cd5a0c3e483ef6020b7477b42670e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
