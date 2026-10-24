# Complete source: GRWTSK.Topology.GeneralTopology.SoundFilter.Variant4f265d56c8fafa22dd2227b24648780d75c4e49ef53dd63c4e01e8c455351f72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b0d0d23eb9721a60cf494b88a851b17a89bb525` · SHA-256 `dd55dafd352767352bb4dd97facc0c8580828a6bbcc8fb3fa98636677424189e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Accepts.Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Accepts.Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Modular/SoundFilter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Prime.Basic


namespace GRWTSK.Topology.GeneralTopology.Accepts.Variant788afca5574ff0a5855c3f98fc3cffd0cdb785b33d09193f62f06b1885813b1e

namespace Noeoueue.Modular.SoundFilter

def Accepts (r n : Nat) : Prop := n = r ∨ ¬ r ∣ n

theorem prime_or_not_dvd {p r : Nat} (hp : p.Prime) (hr : r.Prime) : p = r ∨ ¬ r ∣ p := by
  by_cases equal : p = r
  · exact Or.inl equal
  · right
    intro divides
    have cases := (Nat.dvd_prime hp).mp divides
    cases cases with
    | inl one => exact hr.ne_one one
    | inr same => exact equal same.symm

theorem sound_filter_retains_prime {p r : Nat} (hp : p.Prime) (hr : r.Prime) : Accepts r p := by
  simpa [Accepts, eq_comm] using prime_or_not_dvd hp hr

theorem filter_retains_own_prime (r : Nat) : Accepts r r := Or.inl rfl

end Noeoueue.Modular.SoundFilter
```
