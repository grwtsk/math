# concreteData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba44a577de6ed4fcd7c20b9cd6bc52663db0c98562858b086b89102cff349867",
  "kind": "def",
  "lexical_name": "concreteData",
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
  "slug": "concretedata--cb268ef68f077364b378a95a",
  "source": {
    "blob": "0b7cd22ca7a05a27b73662f0731932eb76fffc5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb268ef68f077364b378a95a63a20c7c61ee260670ab96f52d523a2885966450",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba44a577de6ed4fcd7c20b9cd6bc52663db0c98562858b086b89102cff349867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def concreteData : DataXi P where
  aT := fun T => AdmWindow.av (win T) (P.L T)
  bT := fun T => AdmWindow.bv (win T) (P.L T)
  JT := fun T => JD Fam.D (AdmWindow.gv (win T)) (P.L T) (l T)
  trG := fun T => trGtW cPi (Fam.c T) (P.toSetting T) (Fw P win T)
  trG2 := fun T => trGt2W cPi (Fam.c T) (P.toSetting T) (Fw P win T)
  Ncnt := Ncnt
  Mtot := fun T => MtotalW cPi (Fam.c T) (P.toSetting T) (Fw P win T)
  Mmumu := fun T => Mform (Fw P win T).Phi T Zeta23.mu Zeta23.mu
  MPP := fun T => Mform (Fw P win T).Phi T (Pc (P.X T) (Fam.c T)) (Pc (P.X T) (Fam.c T))
  MmuP := fun T => Mform (Fw P win T).Phi T Zeta23.mu (Pc (P.X T) (Fam.c T))
  MmuPi := fun T => cPi * Mform (Fw P win T).Phi T Zeta23.mu (Zeta23.PiX (P.X T))
  MPPi := fun T => cPi * Mform (Fw P win T).Phi T (Pc (P.X T) (Fam.c T)) (Zeta23.PiX (P.X T))
  MPiPi := fun T => cPi ^ 2 * Mform (Fw P win T).Phi T (Zeta23.PiX (P.X T)) (Zeta23.PiX (P.X T))
  intMu2 := fun T => ∫ τ in T..(2 * T), Zeta23.mu τ ^ 2
  sumB2g := fun T => sumW2g (Fam.c T) (P.X T) (AdmWindow.gv (win T))

end Data

/-! ## Eventual facts: regime, taper hypotheses, coefficient sizes -/

section Facts
variable {P : Params} {win : ℝ → ℝ → ℝ} {Fam : CoeffFamily} {cPi cW : ℝ} {Ncnt : ℝ → ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b7cd22ca7a05a27b73662f0731932eb76fffc5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
