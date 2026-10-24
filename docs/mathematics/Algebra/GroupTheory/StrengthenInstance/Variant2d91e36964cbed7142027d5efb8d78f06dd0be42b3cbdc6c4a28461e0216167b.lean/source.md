# Complete source: GRWTSK.Algebra.GroupTheory.StrengthenInstance.Variant2d91e36964cbed7142027d5efb8d78f06dd0be42b3cbdc6c4a28461e0216167b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93a90ccf06bf56dd78055a5db6b451f2625ad3d2` · SHA-256 `c0c6a08b77df313db97a605a3dbdc96b744345d564f33d044f727f62dcedeb07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Semigroup.Variant5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Semigroup.Variant5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48","mathematical_subject":"Algebra.Groups","original_sha256":"5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/strengthenInstance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.Algebra.GroupTheory.Semigroup.Variant5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48

open Qq Lean Meta

class Semigroup (M) extends Mul M where
  mul_assoc {a b c : M} : (a*b)*c = a*(b*c)
export Semigroup (mul_assoc)

def maybeReassoc {M : Q(Type $u)} (mul : Q(Mul $M)) (a b : Q($M)) :
    MetaM (Option Q($a*($b*$b) = ($a*$b)*$b)) := do
  let .some inst ← trySynthInstanceQ q(Semigroup $M) | return none
  assertInstancesCommute
  return some q(by rw [mul_assoc])

def maybeReassocAlt {M : Q(Type $u)} (mul : Q(Mul $M)) (a b : Q($M)) :
    MetaM (Option Q($a*($b*$b) = ($a*$b)*$b)) := do
  let .some inst ← trySynthInstanceQ q(Semigroup $M) | return none
  assumeInstancesCommute
  return some q(by rw [mul_assoc])

def maybeReassocPure {M : Q(Type $u)} (mul : Q(Mul $M)) (a b : Q($M)) (semigroup : Q(Semigroup $M)) :
    Q($a*($b*$b) = ($a*$b)*$b) :=
  assumeInstancesCommute'
  q(by rw [mul_assoc])
```
