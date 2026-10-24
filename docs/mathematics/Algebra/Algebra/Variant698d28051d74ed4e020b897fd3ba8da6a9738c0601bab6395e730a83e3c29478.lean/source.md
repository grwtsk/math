# Complete source: GRWTSK.Algebra.Algebra.Variant698d28051d74ed4e020b897fd3ba8da6a9738c0601bab6395e730a83e3c29478

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c56814bb22ee9e6d1e16ea498a3b9f1d4d1ce68d` · SHA-256 `b279991140a37f646f2f58d82c74c938024efa9f58345002980adc6d43857937`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Algebra.Variantf17026e49dc0d6a747122e727f5766dd2eb3a7675d28e11250ac703851598d0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f17026e49dc0d6a747122e727f5766dd2eb3a7675d28e11250ac703851598d0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Algebra.Variantf17026e49dc0d6a747122e727f5766dd2eb3a7675d28e11250ac703851598d0f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f17026e49dc0d6a747122e727f5766dd2eb3a7675d28e11250ac703851598d0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Boolean algebra

Object nucleus for complemented distributive Boolean algebras. Derived laws and
instances live in the `Boolean.Algebra.*` leaves; analytic authority layers are
outside this namespace.
-/


namespace GRWTSK.Algebra.Algebra.Variantf17026e49dc0d6a747122e727f5766dd2eb3a7675d28e11250ac703851598d0f

namespace Boolean

universe u

/--
A Boolean algebra presented as a complemented distributive lattice.

The primitive data are the carrier type together with join, meet, complement,
bottom, and top. The laws record boundedness, commutativity, distributivity,
complementation, associativity, and non-degeneracy.

Complement uniqueness is not primitive here; it is derived in
`Boolean.Algebra.Laws`.
-/
class Algebra (B : Type u) where
  join : B → B → B
  meet : B → B → B
  compl : B → B
  bot : B
  top : B

  bot_ne_top : bot ≠ top

  join_bot : ∀ a : B, join a bot = a
  meet_top : ∀ a : B, meet a top = a

  join_comm : ∀ a b : B, join a b = join b a
  meet_comm : ∀ a b : B, meet a b = meet b a

  join_assoc : ∀ a b c : B, join a (join b c) = join (join a b) c
  meet_assoc : ∀ a b c : B, meet a (meet b c) = meet (meet a b) c

  join_meet_distrib :
    ∀ a b c : B, join a (meet b c) = meet (join a b) (join a c)
  meet_join_distrib :
    ∀ a b c : B, meet a (join b c) = join (meet a b) (meet a c)

  join_compl : ∀ a : B, join a (compl a) = top
  meet_compl : ∀ a : B, meet a (compl a) = bot

end Boolean
```
