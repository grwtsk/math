# Complete source: GRWTSK.Algebra.TypePrimeSpectrum.Variantaabc1a0d8578fd011555e0d78d5dcb094b2a3207479276a0a02693b29525448b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `234c3c87ca93d5c63f1603548c1163a736a55bb4` · SHA-256 `c0c33ab1415907212e838dee9bdbd9bc324e5788b64ebdcdc1d037bb27df32bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.PrimitiveTypePrime.Variant2abe192b8a6cf5839f8a329fd9141ae5b8f3a745627871db5923a3eaa49d6c50","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2abe192b8a6cf5839f8a329fd9141ae5b8f3a745627871db5923a3eaa49d6c50","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.PrimitiveTypePrime.Variant2abe192b8a6cf5839f8a329fd9141ae5b8f3a745627871db5923a3eaa49d6c50","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"2abe192b8a6cf5839f8a329fd9141ae5b8f3a745627871db5923a3eaa49d6c50","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Memory/TypePrimeSpectrum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.RingTheory.Ideal.Maps
import Mathlib.RingTheory.MvPolynomial.Ideal
import Noeoueue.Memory.PrimeFrequency


namespace GRWTSK.Algebra.PrimitiveTypePrime.Variant2abe192b8a6cf5839f8a329fd9141ae5b8f3a745627871db5923a3eaa49d6c50

namespace Noeoueue.TypeMemory

variable {sigma K : Type} [DecidableEq sigma] [Field K]

/-- `type-memory://noeoueue/primitive-prime@1` -/
noncomputable def primitiveTypePrime (initial : Finset sigma) : Ideal (MvPolynomial sigma K) :=
  Ideal.span (Set.range fun index : { index // index ∈ initial } => MvPolynomial.X index.1)

/-- `type-memory://noeoueue/theorem-edge-ideal@1` -/
noncomputable def theoremMonomial (support : Finset sigma) : MvPolynomial sigma K :=
  support.prod MvPolynomial.X

noncomputable def theoremEdgeIdeal (supports : Finset (Finset sigma)) : Ideal (MvPolynomial sigma K) :=
  Ideal.span (Set.range fun support : { support // support ∈ supports } => theoremMonomial support.1)

def IsCover (supports : Finset (Finset sigma)) (cover : Finset sigma) : Prop :=
  ∀ support ∈ supports, (support ∩ cover).Nonempty

def IsMinimalCover (supports : Finset (Finset sigma)) (cover : Finset sigma) : Prop :=
  IsCover supports cover ∧ ∀ candidate, candidate < cover → ¬ IsCover supports candidate

/-- `type-memory://noeoueue/minimal-cover-prime@1`. The finite compiler cites this
declaration only after its instantiated containment checker succeeds. -/
theorem cover_characterization (supports : Finset (Finset sigma)) (cover : Finset sigma) :
    IsCover supports cover ↔ ∀ support ∈ supports, (support ∩ cover).Nonempty := Iff.rfl

theorem minimal_cover_characterization (supports : Finset (Finset sigma)) (cover : Finset sigma) :
    IsMinimalCover supports cover ↔
      IsCover supports cover ∧ ∀ candidate, candidate < cover → ¬ IsCover supports candidate := Iff.rfl

end Noeoueue.TypeMemory
```
