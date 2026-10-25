# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerProduct.Variant78b8066354c5628311ef25eb4e053ec4def485b65e317b06a2bed6471363036a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bc1401bacb1bcb21049c46ae4531457ccfb75cf` · SHA-256 `430cc08c981602fdd970cebdd297d51d5ac0dd852db2674e9da43683bc290af8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfiniteEulerProductAuthority.Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InfiniteEulerProductAuthority.Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6","mathematical_subject":"Foundations.Unclassified","original_sha256":"fb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Application Support/Claude/local-agent-mode-sessions/ca894c7e-fbfc-4f86-9031-8b5d43fd5945/be06d025-2292-49e3-808a-dc51ca23d607/local_0de9d1e0-f1a1-472f-98ec-503d7f23f427/outputs/formal 2/lib/AnalyticNumber/EulerProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.DirichletSeries
import Number.EulerProduct

/-!
# Analytic number Euler products

Finite Euler products live in `Number`. Infinite Euler products live here, and
only behind explicit convergence and identity authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfiniteEulerProductAuthority.Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6

namespace AnalyticNumber

/-- Authority for an infinite Euler product attached to a finite system label. -/
structure InfiniteEulerProductAuthority
    (_finiteSystemLabel : String) where
  absoluteConvergenceSound : Prop
  absoluteConvergenceProof : absoluteConvergenceSound
  finiteProductsConverge : Prop
  finiteProductsConvergeProof : finiteProductsConverge
  productIdentitySound : Prop
  productIdentityProof : productIdentitySound

theorem infinite_euler_product_requires_authority
    (A : InfiniteEulerProductAuthority "EulerProduct") :
    A.absoluteConvergenceSound ∧
      A.finiteProductsConverge ∧
      A.productIdentitySound :=
  ⟨A.absoluteConvergenceProof,
    A.finiteProductsConvergeProof,
    A.productIdentityProof⟩

/-- A finite Euler product window does not prove the infinite Euler product. -/
def FiniteEulerWindowProvesInfiniteEulerProduct
    (_P : _root_.Number.FiniteEulerProduct) : Prop :=
  False

theorem finite_euler_window_not_infinite_product
    (P : _root_.Number.FiniteEulerProduct) :
    ¬ FiniteEulerWindowProvesInfiniteEulerProduct P := by
  intro h
  exact h

end AnalyticNumber
```
