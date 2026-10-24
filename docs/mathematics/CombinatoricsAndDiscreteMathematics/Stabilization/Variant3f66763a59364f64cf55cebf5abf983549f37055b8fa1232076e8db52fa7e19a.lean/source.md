# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Stabilization.Variant3f66763a59364f64cf55cebf5abf983549f37055b8fa1232076e8db52fa7e19a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fbdd430c78f3615df4ad0db288f3f5ef3a943a2` · SHA-256 `0bb1b4d9898fe36aa59fb8f499edc68b7fce840825d9bd7044fe50c18768143f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LocalityCertificate.Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LocalityCertificate.Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Stabilization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Percolation
import Mathlib.Data.Fintype.Basic

/-!
# Persistent local stabilization

Locality turns one vanished update quotient into permanent local stability.
The supplied terminal-time function then induces disjoint, exhaustive strata.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LocalityCertificate.Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5

namespace Mathematics.AbelReynolds

universe u v w

structure LocalityCertificate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (Point : Type v)
    (LocalIdeal : Type w) where
  localize : Ideal → Point → LocalIdeal
  localStep : Point → LocalIdeal → LocalIdeal
  commutes :
    ∀ ideal point,
      localize (profile.step ideal) point =
        localStep point (localize ideal point)

structure PersistentTerminalProfile
    (Point : Type u)
    [Fintype Point]
    [DecidableEq Point] where
  terminalStage : Nat
  active : Nat → Finset Point
  activeNested :
    ∀ stage, active (stage + 1) ⊆ active stage
  terminalTime : Point → Nat
  terminalBound :
    ∀ point, terminalTime point ≤ terminalStage
  activeBeforeTerminal :
    ∀ stage point,
      point ∈ active stage ↔ stage < terminalTime point

def terminalStratum
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat) : Finset Point :=
  Finset.univ.filter
    (fun point => profile.terminalTime point = stage)

theorem mem_terminalStratum_iff
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat)
    (point : Point) :
    point ∈ terminalStratum profile stage ↔
      profile.terminalTime point = stage := by
  simp [terminalStratum]

theorem terminalStrata_partition
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (point : Point) :
    ∃! stage, point ∈ terminalStratum profile stage := by
  refine ⟨profile.terminalTime point, ?_, ?_⟩
  · simp [terminalStratum]
  · intro stage member
    exact (mem_terminalStratum_iff profile stage point).mp member |>.symm

theorem active_support_nesting
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat) :
    profile.active (stage + 1) ⊆ profile.active stage :=
  profile.activeNested stage

end Mathematics.AbelReynolds
```
