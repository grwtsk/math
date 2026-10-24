# concreteDataD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e86221fd57857657a5c9674c35f96fa24049bbb92acd7d011b2f077afc9dcaca",
  "kind": "def",
  "lexical_name": "concreteDataD",
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
  "slug": "concretedatad--eed918cbd6fcbfc1879f7188",
  "source": {
    "blob": "e8092bef6bbccba1b112de5e1c7f83dc8c767c04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eed918cbd6fcbfc1879f7188cd4efe79983f11b05a1491d70ec3aaf402d5881e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e86221fd57857657a5c9674c35f96fa24049bbb92acd7d011b2f077afc9dcaca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def concreteDataD (Z : ZeroConfig) : DataD P where
  aT := fun T => (P.localFunD T).a
  bT := fun T => (P.localFunD T).b
  trG := fun T => trGtA (P.toSetting T) (P.localFunD T)
  trG2 := fun T => trGt2A (P.toSetting T) (P.localFunD T)
  Ncnt := fun T => (Z.N T (2 * T) : ℝ)
  Mtot := fun T => MtotalA (P.toSetting T) (P.localFunD T)
  Mmumu := fun T => Mform (P.localFunD T).Phi T Zeta23.mu Zeta23.mu
  MPP := fun T => Mform (P.localFunD T).Phi T (Zeta23.PX (P.X T)) (Zeta23.PX (P.X T))
  MmuP := fun T => Mform (P.localFunD T).Phi T Zeta23.mu (Zeta23.PX (P.X T))
  MmuPi := fun T => Mform (P.localFunD T).Phi T Zeta23.mu (Zeta23.PiX (P.X T))
  MPPi := fun T => Mform (P.localFunD T).Phi T (Zeta23.PX (P.X T)) (Zeta23.PiX (P.X T))
  MPiPi := fun T => Mform (P.localFunD T).Phi T (Zeta23.PiX (P.X T)) (Zeta23.PiX (P.X T))
  intMu2 := fun T => ∫ τ in T..(2 * T), Zeta23.mu τ ^ 2
  sumL2g := fun T => sumA2g (P.X T) (P.localFunD T).g
  JT := fun T => 2 / P.L T ^ 3 * ∫ y in (0:ℝ)..(P.L T), (P.localFunD T).g y * y

variable {P}

/-- the CoreD analogue of LocalHypsEventually (= the conclusion of
BridgeD.localHypsCoreD_eventually). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant598031d2f3f4e8365223119df64092145aa60a7e8ad834f4045a8b2ae1f92336.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8092bef6bbccba1b112de5e1c7f83dc8c767c04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
