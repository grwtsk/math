# pdeTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32b585b03969228d9a24ab585c0b36673c054173063c018869b85c50f9faf2df",
  "kind": "def",
  "lexical_name": "pdeTargets",
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
  "slug": "pdetargets--7ac7ba1f7e6605038bd29782",
  "source": {
    "blob": "bb2faa226d61cc81814b4f0d3c3bc5f408105b2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 591,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ac7ba1f7e6605038bd29782f0d129b02442b5a94d893a3906cd36b9a8a3e878",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32b585b03969228d9a24ab585c0b36673c054173063c018869b85c50f9faf2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pdeTargets : List OpenTargetRecord := [
  mk "pde.navier_stokes" .pde "Navier-Stokes regularity" .openStatus
    ["Navier-Stokes equation", "fluid velocity"]
    ["existence, smoothness, uniqueness, blow-up obstruction"]
    ["initial data", "energy inequality"]
    ["global regularity or counterexample"]
    ["weak solution theory"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "pde.euler_regularity" .pde "Euler regularity" .openStatus
    ["Euler equation", "fluid velocity"]
    ["finite-time singularity or global regularity"]
    ["initial data class"]
    ["singularity/global conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "pde.yang_mills_mass_gap" .pde "Yang-Mills mass gap" .openStatus
    ["Yang-Mills fields", "gauge group"]
    ["constructive QFT existence and mass gap"]
    ["axiomatic quantum field theory setup"]
    ["existence and positivity conclusion"]
    ["numerical and physical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "pde.constructive_qft" .pde "Constructive QFT" .openStatus
    ["Wightman axioms", "Osterwalder-Schrader axioms", "interacting fields"]
    ["construct interacting quantum fields"]
    ["dimension and model hypotheses"]
    ["axiomatic field construction"]
    ["many low-dimensional constructions"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "pde.turbulence" .pde "Turbulence regularity and dissipation" .openStatus
    ["fluid flow", "inertial range", "energy cascade"]
    ["regularity and anomalous dissipation behavior"]
    ["scaling regime hypotheses"]
    ["law or regularity conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "pde.wave_maps" .pde "Wave maps and harmonic maps" .partialStatus
    ["wave maps", "harmonic maps"]
    ["singularity and global regularity fragments"]
    ["domain, target, energy class"]
    ["global or blow-up classification"]
    ["many dimension/energy-dependent results"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [],
  mk "pde.schrodinger_operators" .pde "Schrodinger operator spectral transitions" .openStatus
    ["Schrodinger operators", "random or quasiperiodic potentials"]
    ["Anderson localization and spectral transition residues"]
    ["operator family and potential hypotheses"]
    ["localization/delocalization conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "pde.free_boundary" .pde "Fluid free-boundary problems" .openStatus
    ["free boundaries", "fluid interfaces"]
    ["regularity and singularity atoms"]
    ["boundary condition and initial surface"]
    ["regularity or singularity conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2faa226d61cc81814b4f0d3c3bc5f408105b2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
